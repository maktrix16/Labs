<?php
define('EXTENSION_NAME', "Endless Scroller");
define('EXTENSION_VERSION', "1.6.1");
define('EXTENSION_TYPE', "vQmod");
define('EXTENSION_COMPATIBILITY', "OpenCart 1.5.5.x and 1.5.6.x");
define('EXTENSION_URL', "http://www.opencart.com/index.php?route=extension/extension/info&extension_id=5678");
define('EXTENSION_SUPPORT', "support@agar.ee");
define('EXTENSION_SUPPORT_FORUM', "http://forum.opencart.com/viewtopic.php?f=123&t=57210");

class ControllerModuleEndlessScroller extends Controller {
    private $error = array();
    private $defaults = array(
        'es_installed'              => 1,
        'endless_scroller_status'   => 0,
        'es_bottom_pixels'          => "400",
        'es_use_fade_in'            => 1,
        'es_use_back_to_top'        => 1,
        'es_use_more'               => 0,
        'es_use_more_after'         => 0,
        'es_use_sticky_footer'      => 1,
        'es_max_items_per_load'     => 500
    );

    public function index() {
        $this->data = array_merge($this->data, $this->language->load('module/endless_scroller'));

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
            # Loop through all settings for the post/config values
            foreach (array_keys($this->defaults) as $setting) {
                if (!isset($this->request->post[$setting])) {
                    $this->request->post[$setting] = 0;
                }
            }

            $this->model_setting_setting->editSetting('endless_scroller', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }

        if (!class_exists('VQMod')) {
            $this->data['error_warning'] = $this->language->get('error_vqmod');
        }

        if (isset($this->session->data['success'])) {
            $this->data['success'] = $this->session->data['success'];

            unset($this->session->data['success']);
        } else {
            $this->data['success'] = '';
        }

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/endless_scroller', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['action'] = $this->url->link('module/endless_scroller', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['ext_name'] = EXTENSION_NAME;
        $this->data['ext_version'] = EXTENSION_VERSION;
        $this->data['ext_type'] = EXTENSION_TYPE;
        $this->data['ext_compatibility'] = EXTENSION_COMPATIBILITY;
        $this->data['ext_url'] = EXTENSION_URL;
        $this->data['ext_support'] = EXTENSION_SUPPORT;
        $this->data['ext_support_forum'] = EXTENSION_SUPPORT_FORUM;
        $this->data['ext_subject'] = sprintf($this->language->get('text_ext_subject'), EXTENSION_NAME);

        # Loop through all settings for the post/config values
        foreach (array_keys($this->defaults) as $setting) {
            if (isset($this->request->post[$setting])) {
                $this->data[$setting] = $this->request->post[$setting];
            } else {
                $this->data[$setting] = $this->config->get($setting);
                if ($this->data[$setting] === null) {
                    $this->data['error_warning'] = $this->language->get('error_unsaved_settings');
                    if (isset($this->defaults[$setting])) {
                        $this->data[$setting] = $this->defaults[$setting];
                    }
                }
            }
        }

        $this->template = 'module/endless_scroller.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );

        $this->response->setOutput($this->render());
    }

    public function install() {
        $this->load->model('setting/setting');
        $this->model_setting_setting->editSetting('endless_scroller', $this->defaults);
    }

    public function uninstall() {
        $this->load->model('setting/setting');
        $this->model_setting_setting->deleteSetting('endless_scroller');
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/endless_scroller')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ($this->request->post['es_use_more_after'] < 0) {
            $this->error['warning'] = $this->language->get('error_use_more_after');
        }

        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}
?>