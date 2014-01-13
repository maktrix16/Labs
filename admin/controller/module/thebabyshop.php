<?php
class ControllerModulethebabyshop extends Controller {
	private $error = array();
	private $_name = 'thebabyshop';	
	
	public function index() {
		$language = $this->language->load('module/thebabyshop');
        $this->data = array_merge($this->data, $language);

		
        $this->document->setTitle($this->language->get('heading_title'));
		
        $this->load->model('setting/setting');
        $this->load->model('tool/image');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('thebabyshop', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');		
		
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}	
		
            $this->data['text_image_manager'] = 'Image manager';
            $this->data['token'] = $this->session->data['token']; 
			
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_module_settings'] = $this->language->get('text_module_settings');	
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_left'] = $this->language->get('text_left');	
		$this->data['text_right'] = $this->language->get('text_right');			

		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');		
		$this->data['entry_status'] = $this->language->get('entry_status');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');		
        

        $config_data = array(

        'thebabyshop_status',
		
		'thebabyshop_skin',	
		
        'thebabyshop_tab_layout',
        'thebabyshop_tab_mainmenu',				
        'thebabyshop_tab_footer',		
		
        'thebabyshop_menu_homepage',		
        'thebabyshop_menu_homepage_status',
		'thebabyshop_menu_homepage_style',
		
        'thebabyshop_menu_categories',		
        'thebabyshop_menu_categories_status',
        'thebabyshop_menu_categories_style',
		
        'thebabyshop_menu_brands',		
        'thebabyshop_menu_brands_status',
        'thebabyshop_menu_brands_style',		
        'thebabyshop_menu_brands_per_row',				
		
        'thebabyshop_menu_link_1_status',	
        'thebabyshop_menu_link_1_url',
        'thebabyshop_menu_link_1_target',		
	    'thebabyshop_menu_link_2_status',	
        'thebabyshop_menu_link_2_url',
        'thebabyshop_menu_link_2_target',		
        'thebabyshop_menu_link_3_status',		
        'thebabyshop_menu_link_3_url',
        'thebabyshop_menu_link_3_target',		
        'thebabyshop_menu_link_4_status',		
        'thebabyshop_menu_link_4_url',
        'thebabyshop_menu_link_4_target',		
        'thebabyshop_menu_link_5_status',
        'thebabyshop_menu_link_5_url',
        'thebabyshop_menu_link_5_target',		
        'thebabyshop_menu_link_6_status',	
        'thebabyshop_menu_link_6_url',
        'thebabyshop_menu_link_6_target',		
	    'thebabyshop_menu_link_7_status',	
        'thebabyshop_menu_link_7_url',
        'thebabyshop_menu_link_7_target',		
        'thebabyshop_menu_link_8_status',		
        'thebabyshop_menu_link_8_url',
        'thebabyshop_menu_link_8_target',		
        'thebabyshop_menu_link_9_status',		
        'thebabyshop_menu_link_9_url',
        'thebabyshop_menu_link_9_target',		
        'thebabyshop_menu_link_10_status',
        'thebabyshop_menu_link_10_url',
        'thebabyshop_menu_link_10_target',		
		
        'thebabyshop_menu_information_pages',		
        'thebabyshop_menu_information_pages_status',
		
        'thebabyshop_menu_your_account',		
        'thebabyshop_menu_your_account_status',
		
        'thebabyshop_menu_custom_block_status',
        'thebabyshop_menu_custom_block_2_status',
        'thebabyshop_menu_custom_block_3_status',	
		
        'thebabyshop_menu_contacts',		
        'thebabyshop_menu_contacts_status',
		
        'thebabyshop_homepage_banner_slider_type',
        'thebabyshop_homepage_bestseller_status',		
        'thebabyshop_homepage_featured_status',		
        'thebabyshop_homepage_latest_status',
        'thebabyshop_homepage_specials_status',		
        'thebabyshop_homepage_category_wall',		
        'thebabyshop_homepage_category_wall_status',
        'thebabyshop_homepage_category_wall_icon_status',		
        'thebabyshop_homepage_category_wall_per_row',			
        'thebabyshop_homepage_category_wall_sub_number',
        'thebabyshop_homepage_brands_wall',		
        'thebabyshop_homepage_brands_wall_status',
        'thebabyshop_homepage_brands_wall_style',			
        'thebabyshop_homepage_brands_wall_per_row',		
		
        'thebabyshop_category_subcategories',
        'thebabyshop_category_subcategories_status',				
        'thebabyshop_category_subcategories_style',
		
        'thebabyshop_product_manufacturer_logo_status',			
        'thebabyshop_product_viewed_status',	
		'thebabyshop_product_i_c_status',	
        'thebabyshop_product_zoom_type',		
        'thebabyshop_product_related_status',
        'thebabyshop_product_related_position',
        'thebabyshop_product_custom_status',	
        'thebabyshop_product_custom_tab_status',
		'thebabyshop_product_custom_tab_2_status',
		'thebabyshop_product_custom_tab_3_status',
		
        'thebabyshop_contact_custom_status',			
		
		'thebabyshop_left_right_column_categories_type',	
		
		'thebabyshop_others_totop',

        'thebabyshop_about_status',
        'thebabyshop_custom_status',	
        'thebabyshop_contacts_status',					
		
        'thebabyshop_twitter_block_status',
        'thebabyshop_twitter_block_user',
        'thebabyshop_twitter_block_widget_id',
		'thebabyshop_twitter_block_tweets',
        'thebabyshop_twitter_block_theme',
		
        'thebabyshop_information_block_status',		
		
        'thebabyshop_follow_us_status',
        'thebabyshop_facebook',
        'thebabyshop_twitter',
        'thebabyshop_googleplus',
        'thebabyshop_rss',
        'thebabyshop_pinterest',
        'thebabyshop_vimeo',
        'thebabyshop_flickr',		
        'thebabyshop_linkedin',	
        'thebabyshop_youtube',		
        'thebabyshop_dribbble',			
		
        'thebabyshop_powered_status',
		
        'thebabyshop_payment_block_status',	
		'thebabyshop_payment_block_custom',
		'thebabyshop_payment_block_custom_thumb',
		'thebabyshop_payment_block_custom_status',
		'thebabyshop_payment_block_custom_url',		
        'thebabyshop_payment_paypal',
        'thebabyshop_payment_paypal_url',		
        'thebabyshop_payment_visa',
        'thebabyshop_payment_visa_url',			
        'thebabyshop_payment_mastercard',	
        'thebabyshop_payment_mastercard_url',
        'thebabyshop_payment_maestro',	
        'thebabyshop_payment_maestro_url',
        'thebabyshop_payment_discover',	
        'thebabyshop_payment_discover_url',			
        'thebabyshop_payment_moneybookers',	
        'thebabyshop_payment_moneybookers_url',
        'thebabyshop_payment_american_express',	
        'thebabyshop_payment_american_express_url',		
		'thebabyshop_payment_cirrus',	
        'thebabyshop_payment_cirrus_url',		
		'thebabyshop_payment_delta',	
        'thebabyshop_payment_delta_url',		
		'thebabyshop_payment_google',	
        'thebabyshop_payment_google_url',		
		'thebabyshop_payment_2co',	
        'thebabyshop_payment_2co_url',		
		'thebabyshop_payment_sage',	
        'thebabyshop_payment_sage_url',		
		'thebabyshop_payment_solo',	
        'thebabyshop_payment_solo_url',		
		'thebabyshop_payment_switch',	
        'thebabyshop_payment_switch_url',		
		'thebabyshop_payment_western_union',	
        'thebabyshop_payment_western_union_url',
		
		'thebabyshop_layout_style',			
		'thebabyshop_body_background_color',
		'thebabyshop_headings_color',
		'thebabyshop_body_text_color',			
		'thebabyshop_light_text_color',			
		'thebabyshop_other_links_color',		
		'thebabyshop_links_hover_color',
		'thebabyshop_general_icons_style',			
		
		'thebabyshop_main_column_status',		
		'thebabyshop_main_column_background_color',
		'thebabyshop_main_column_border_status',		
		'thebabyshop_main_column_border_color',
		'thebabyshop_main_column_border_size',
		'thebabyshop_main_column_border_style',		
		'thebabyshop_main_column_radius',
		'thebabyshop_main_column_shadow',	
		
		'thebabyshop_left_right_column_status',		
		'thebabyshop_left_right_column_background_color',
		'thebabyshop_left_right_column_separator_color',
		'thebabyshop_left_right_column_separator_style',	
		'thebabyshop_left_right_column_separator_size',				
		'thebabyshop_left_right_column_radius',
		'thebabyshop_left_right_column_shadow',
		'thebabyshop_left_right_column_head_status',		
		'thebabyshop_left_right_column_head_background_color',
		'thebabyshop_left_right_column_head_radius',
		'thebabyshop_left_right_column_head_shadow',
		'thebabyshop_left_right_column_head_custom',
		'thebabyshop_left_right_column_head_custom_thumb',
		'thebabyshop_left_right_column_head_title_color',
		'thebabyshop_left_right_column_box_status',		
		'thebabyshop_left_right_column_box_background_color',
		'thebabyshop_left_right_column_box_radius',
		'thebabyshop_left_right_column_box_shadow',		
		
		'thebabyshop_content_column_status',		
		'thebabyshop_content_column_background_color',
		'thebabyshop_content_column_separator_color',
		'thebabyshop_content_column_separator_style',	
		'thebabyshop_content_column_separator_size',			
		'thebabyshop_content_column_radius',
		'thebabyshop_content_column_shadow',	
		
		'thebabyshop_price_color',
		'thebabyshop_price_old_color',	
		'thebabyshop_price_new_color',	
		'thebabyshop_price_tax_color',			
		
		'thebabyshop_button_background_color',
		'thebabyshop_button_border_top_color',
		'thebabyshop_button_border_bottom_color',
		'thebabyshop_button_background_hover_color',
		'thebabyshop_button_border_top_hover_color',
		'thebabyshop_button_border_bottom_hover_color',
		'thebabyshop_button_text_color',
		'thebabyshop_button_exclusive_background_color',
		'thebabyshop_button_exclusive_border_top_color',
		'thebabyshop_button_exclusive_border_bottom_color',
		'thebabyshop_button_exclusive_background_hover_color',
		'thebabyshop_button_exclusive_border_top_hover_color',
		'thebabyshop_button_exclusive_border_bottom_hover_color',
		'thebabyshop_button_exclusive_text_color',
		'thebabyshop_button_border_radius',
		'thebabyshop_button_text_shadow',
	
		'thebabyshop_top_area_status',		
		'thebabyshop_top_area_background_color',	
		'thebabyshop_top_area_ls_link_color',	
		'thebabyshop_top_area_ls_link_color_hover',
		'thebabyshop_top_area_ls_link_separator_color',		
		'thebabyshop_top_area_lc_text_color',			
		'thebabyshop_top_area_cart_link_color',	
		'thebabyshop_top_area_cart_link_color_hover',
		'thebabyshop_top_area_cart_icon_status',
		'thebabyshop_top_area_cart_icon_style',
		'thebabyshop_top_area_dropdown_background_color',
		'thebabyshop_top_area_dropdown_top_bar_color',
		'thebabyshop_logo_position',		
		'thebabyshop_search_bar_position',
		'thebabyshop_search_bar_style',
		'thebabyshop_search_bar_style_color',	
		'thebabyshop_search_bar_border_color',
		
		'thebabyshop_mm_background_color_status',		
		'thebabyshop_mm_background_color',
		'thebabyshop_mm_border_top_status',		
		'thebabyshop_mm_border_top_color',
		'thebabyshop_mm_border_top_style',			
		'thebabyshop_mm_border_bottom_status',		
		'thebabyshop_mm_border_bottom_color',
		'thebabyshop_mm_border_bottom_style',	
		'thebabyshop_mm_separator_status',		
		'thebabyshop_mm_separator_color',
		'thebabyshop_mm_separator_style',	
		'thebabyshop_mm_separator_size',
		'thebabyshop_mm_margin_size',			
		'thebabyshop_mm_radius',
		'thebabyshop_mm_shadow',	
			
		'thebabyshop_mm1_background_color_status',		
		'thebabyshop_mm1_background_color',		
		'thebabyshop_mm1_background_hover_color',
		'thebabyshop_mm1_link_color',
		'thebabyshop_mm1_link_hover_color',		
		
		'thebabyshop_mm2_background_color_status',
		'thebabyshop_mm2_background_color',		
		'thebabyshop_mm2_background_hover_color',		
		'thebabyshop_mm2_link_color',
		'thebabyshop_mm2_link_hover_color',
		'thebabyshop_mm2_main_category_link_color',	
        'thebabyshop_mm2_main_category_icon_status',	

		'thebabyshop_mm3_background_color_status',
		'thebabyshop_mm3_background_color',
		'thebabyshop_mm3_background_hover_color',		
		'thebabyshop_mm3_link_color',
		'thebabyshop_mm3_link_hover_color',		
	
		'thebabyshop_mm4_background_color_status',
		'thebabyshop_mm4_background_color',
		'thebabyshop_mm4_background_hover_color',		
		'thebabyshop_mm4_link_color',
		'thebabyshop_mm4_link_hover_color',	

		'thebabyshop_mm5_background_color_status',
		'thebabyshop_mm5_background_color',
		'thebabyshop_mm5_background_hover_color',		
		'thebabyshop_mm5_link_color',
		'thebabyshop_mm5_link_hover_color',	

		'thebabyshop_mm6_background_color_status',
		'thebabyshop_mm6_background_color',
		'thebabyshop_mm6_background_hover_color',		
		'thebabyshop_mm6_link_color',
		'thebabyshop_mm6_link_hover_color',	

		'thebabyshop_mm7_background_color_status',
		'thebabyshop_mm7_background_color',
		'thebabyshop_mm7_background_hover_color',		
		'thebabyshop_mm7_link_color',
		'thebabyshop_mm7_link_hover_color',
		
		'thebabyshop_mm8_background_color_status',
		'thebabyshop_mm8_background_color',
		'thebabyshop_mm8_background_hover_color',	
		'thebabyshop_mm8_link_color',
		'thebabyshop_mm8_link_hover_color',		
		
		'thebabyshop_mm_sub_background_color',
		'thebabyshop_mm_sub_background_hover_color',		
		'thebabyshop_mm_sub_titles_background_color',				
		'thebabyshop_mm_sub_text_color',
		'thebabyshop_mm_sub_link_color',		
		'thebabyshop_mm_sub_link_hover_color',
		'thebabyshop_mm_sub_separator_color',
		'thebabyshop_mm_sub_separator_style',	
		'thebabyshop_mm_sub_box_shadow',
		
		'thebabyshop_mid_prod_slider_background_color',
		'thebabyshop_mid_prod_slider_custom',
		'thebabyshop_mid_prod_slider_custom_thumb',
		'thebabyshop_mid_prod_slider_custom_position',
		'thebabyshop_mid_prod_slider_custom_repeat',		
		'thebabyshop_mid_prod_slider_name_color',
		'thebabyshop_mid_prod_slider_desc_color',
		'thebabyshop_mid_prod_slider_price_color',
		'thebabyshop_mid_prod_slider_links_color_hover',			
		'thebabyshop_mid_prod_slider_bottom_bar_background_color',	
		'thebabyshop_mid_prod_slider_bottom_bar_background_color_hover',			
		'thebabyshop_mid_prod_slider_bottom_bar_background_color_sm',		
		'thebabyshop_mid_prod_slider_bottom_bar_link_color',	
		
		'thebabyshop_mid_prod_box_background_color',
		'thebabyshop_mid_prod_box_background_hover_color',	
		'thebabyshop_mid_prod_box_border_color',	
		'thebabyshop_mid_prod_box_border_hover_color',
		'thebabyshop_mid_prod_box_radius',
		'thebabyshop_mid_prod_box_sale_icon_color',			
		
		'thebabyshop_mid_prod_stars_color',		
		
		'thebabyshop_mid_prod_page_buy_section_background_color',
		'thebabyshop_mid_prod_page_buy_section_separator_color',
		'thebabyshop_mid_prod_page_buy_section_separator_style',	
		'thebabyshop_mid_prod_page_buy_section_separator_size',
		'thebabyshop_mid_prod_page_buy_section_radius',
		
		'thebabyshop_mid_prod_page_tabs_background_color',		
		
		'thebabyshop_f1_background_color',
		'thebabyshop_f1_titles_color',

		'thebabyshop_f1_titles_border_bottom_color',
		'thebabyshop_f1_titles_border_bottom_style',	
		'thebabyshop_f1_titles_border_bottom_size',		
		'thebabyshop_f1_text_color',		
		'thebabyshop_f1_link_color',
		'thebabyshop_f1_link_hover_color',
		'thebabyshop_f1_light_text_color',
		'thebabyshop_f1_border_top_status',		
		'thebabyshop_f1_border_top_color',
		'thebabyshop_f1_border_top_style',	
		'thebabyshop_f1_border_top_size',
		'thebabyshop_f1_contact_icon_style',	
		'thebabyshop_f1_twitts_icon_style',
		
		'thebabyshop_f2_background_color',
		'thebabyshop_f2_titles_color',
		'thebabyshop_f2_titles_border_bottom_color',
		'thebabyshop_f2_titles_border_bottom_style',
		'thebabyshop_f2_titles_border_bottom_size',			
		'thebabyshop_f2_link_color',
		'thebabyshop_f2_link_hover_color',
		'thebabyshop_f2_border_top_status',		
		'thebabyshop_f2_border_top_color',
		'thebabyshop_f2_border_top_style',	
		'thebabyshop_f2_border_top_size',		
		
		'thebabyshop_f4_background_color',
		'thebabyshop_f4_text_color',		
		'thebabyshop_f4_link_color',
		'thebabyshop_f4_link_hover_color',
		'thebabyshop_f4_light_text_color',
		'thebabyshop_f4_border_top_status',		
		'thebabyshop_f4_border_top_color',
		'thebabyshop_f4_border_top_style',	
		'thebabyshop_f4_border_top_size',		
		
		'thebabyshop_f5_background_color',
		'thebabyshop_f5_text_color',		
		'thebabyshop_f5_link_color',
		'thebabyshop_f5_link_hover_color',
		'thebabyshop_f5_border_top_status',		
		'thebabyshop_f5_border_top_color',
		'thebabyshop_f5_border_top_style',	
		'thebabyshop_f5_border_top_size',	

		'thebabyshop_pattern_thebabyshop',
		'thebabyshop_bg_image_custom',
		'thebabyshop_bg_image_thumb',
		'thebabyshop_bg_image_position',
		'thebabyshop_bg_image_repeat',
		'thebabyshop_bg_image_attachment',		

		'thebabyshop_pattern_thebabyshop_mc',
		'thebabyshop_bg_image_mc_custom',
		'thebabyshop_bg_image_mc_thumb',
		'thebabyshop_bg_image_mc_position',
		'thebabyshop_bg_image_mc_repeat',
		'thebabyshop_bg_image_mc_attachment',
		
		'thebabyshop_pattern_thebabyshop_ta',
		'thebabyshop_bg_image_ta_custom',
		'thebabyshop_bg_image_ta_thumb',
		'thebabyshop_bg_image_ta_position',
		'thebabyshop_bg_image_ta_repeat',
		'thebabyshop_bg_image_ta_attachment',		
		
		'thebabyshop_pattern_thebabyshop_mm',
		'thebabyshop_bg_image_mm_custom',
		'thebabyshop_bg_image_mm_thumb',
		'thebabyshop_bg_image_mm_repeat',		
		
		'thebabyshop_pattern_thebabyshop_mmt',
		'thebabyshop_bg_image_mmt_custom',
		'thebabyshop_bg_image_mmt_thumb',
		'thebabyshop_bg_image_mmt_repeat',		
	
		'thebabyshop_pattern_thebabyshop_f1',
		'thebabyshop_bg_image_f1_custom',
		'thebabyshop_bg_image_f1_thumb',
		'thebabyshop_bg_image_f1_position',
		'thebabyshop_bg_image_f1_repeat',
		'thebabyshop_pattern_thebabyshop_f2',	
		'thebabyshop_bg_image_f2_custom',
		'thebabyshop_bg_image_f2_thumb',
		'thebabyshop_bg_image_f2_position',
		'thebabyshop_bg_image_f2_repeat',		
		'thebabyshop_pattern_thebabyshop_f4',	
		'thebabyshop_bg_image_f4_custom',
		'thebabyshop_bg_image_f4_thumb',
		'thebabyshop_bg_image_f4_position',
		'thebabyshop_bg_image_f4_repeat',
		'thebabyshop_pattern_thebabyshop_f5',			
		'thebabyshop_bg_image_f5_custom',
		'thebabyshop_bg_image_f5_thumb',
		'thebabyshop_bg_image_f5_position',
		'thebabyshop_bg_image_f5_repeat',		
		
		'thebabyshop_body_font',
		'thebabyshop_title_font',
		'thebabyshop_title_font_weight',
		'thebabyshop_title_font_uppercase',
		'thebabyshop_cart_font',
		'thebabyshop_cart_font_size',		
		'thebabyshop_cart_font_weight',
		'thebabyshop_cart_font_uppercase',		
		'thebabyshop_main_menu_font',
		'thebabyshop_mm_font_size',		
		'thebabyshop_mm_font_weight',
		'thebabyshop_mm_font_uppercase',				
		'thebabyshop_price_font',
		'thebabyshop_price_font_weight',			
		'thebabyshop_button_font',
		'thebabyshop_button_font_weight',
		'thebabyshop_button_font_uppercase',
		'thebabyshop_search_font',
		'thebabyshop_search_font_size',		
		'thebabyshop_search_font_weight',
		'thebabyshop_search_font_uppercase',				
		'thebabyshop_product_name_font_weight',		

        'thebabyshop_facebook_likebox_status',	
        'thebabyshop_facebook_likebox_id',
        'thebabyshop_facebook_likebox_position',	
		
        'thebabyshop_custom_box_status',	
        'thebabyshop_custom_box_position',
		'thebabyshop_custom_box_background',
		
        'thebabyshop_custom_css',
		'thebabyshop_custom_js',	
		
        );
        
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
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
			'href'      => $this->url->link('module/thebabyshop', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/thebabyshop', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');	
		
		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		$languages = $this->model_localisation_language->getLanguages();
		
		foreach ($languages as $language) {
			if (isset($this->request->post['thebabyshop_menu_link_1' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_1' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_1' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_menu_link_2' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_2' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_2' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_2' . $language['language_id']);
			}			
			if (isset($this->request->post['thebabyshop_menu_link_3' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_3' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_3' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_3' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_3' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_4' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_4' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_4' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_4' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_4' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_5' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_5' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_5' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_5' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_5' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_6' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_6' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_6' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_6' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_6' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_7' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_7' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_7' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_7' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_7' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_8' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_8' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_8' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_8' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_8' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_9' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_9' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_9' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_9' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_9' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_menu_link_10' . $language['language_id']])) {
				$this->data['thebabyshop_menu_link_10' . $language['language_id']] = $this->request->post['thebabyshop_menu_link_10' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_link_10' . $language['language_id']] = $this->config->get('thebabyshop_menu_link_10' . $language['language_id']);
			}
			
			if (isset($this->request->post['thebabyshop_menu_custom_block_title_1' . $language['language_id']])) {
				$this->data['thebabyshop_menu_custom_block_title_1' . $language['language_id']] = $this->request->post['thebabyshop_menu_custom_block_title_1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_custom_block_title_1' . $language['language_id']] = $this->config->get('thebabyshop_menu_custom_block_title_1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_menu_custom_block_title_2' . $language['language_id']])) {
				$this->data['thebabyshop_menu_custom_block_title_2' . $language['language_id']] = $this->request->post['thebabyshop_menu_custom_block_title_2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_custom_block_title_2' . $language['language_id']] = $this->config->get('thebabyshop_menu_custom_block_title_2' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_menu_custom_block_title_3' . $language['language_id']])) {
				$this->data['thebabyshop_menu_custom_block_title_3' . $language['language_id']] = $this->request->post['thebabyshop_menu_custom_block_title_3' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_custom_block_title_3' . $language['language_id']] = $this->config->get('thebabyshop_menu_custom_block_title_3' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_menu_custom_block_content_1' . $language['language_id']])) {
				$this->data['thebabyshop_menu_custom_block_content_1' . $language['language_id']] = $this->request->post['thebabyshop_menu_custom_block_content_1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_custom_block_content_1' . $language['language_id']] = $this->config->get('thebabyshop_menu_custom_block_content_1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_menu_custom_block_content_2' . $language['language_id']])) {
				$this->data['thebabyshop_menu_custom_block_content_2' . $language['language_id']] = $this->request->post['thebabyshop_menu_custom_block_content_2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_custom_block_content_2' . $language['language_id']] = $this->config->get('thebabyshop_menu_custom_block_content_2' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_menu_custom_block_content_3' . $language['language_id']])) {
				$this->data['thebabyshop_menu_custom_block_content_3' . $language['language_id']] = $this->request->post['thebabyshop_menu_custom_block_content_3' . $language['language_id']];
			} else {
				$this->data['thebabyshop_menu_custom_block_content_3' . $language['language_id']] = $this->config->get('thebabyshop_menu_custom_block_content_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['thebabyshop_product_custom_content' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_content' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_content' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_content' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_product_custom_tab_title' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_tab_title' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_tab_title' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_tab_title' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_tab_title' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_product_custom_tab_content' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_tab_content' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_tab_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_tab_content' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_tab_content' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_product_custom_tab_2_title' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_tab_2_title' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_tab_2_title' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_tab_2_title' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_tab_2_title' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_product_custom_tab_2_content' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_tab_2_content' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_tab_2_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_tab_2_content' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_tab_2_content' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_product_custom_tab_3_title' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_tab_3_title' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_tab_3_title' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_tab_3_title' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_tab_3_title' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_product_custom_tab_3_content' . $language['language_id']])) {
				$this->data['thebabyshop_product_custom_tab_3_content' . $language['language_id']] = $this->request->post['thebabyshop_product_custom_tab_3_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_product_custom_tab_3_content' . $language['language_id']] = $this->config->get('thebabyshop_product_custom_tab_3_content' . $language['language_id']);
			}	

			if (isset($this->request->post['thebabyshop_contact_custom_content' . $language['language_id']])) {
				$this->data['thebabyshop_contact_custom_content' . $language['language_id']] = $this->request->post['thebabyshop_contact_custom_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_custom_content' . $language['language_id']] = $this->config->get('thebabyshop_contact_custom_content' . $language['language_id']);
			}
			
			if (isset($this->request->post['thebabyshop_contacts_title' . $language['language_id']])) {
				$this->data['thebabyshop_contacts_title' . $language['language_id']] = $this->request->post['thebabyshop_contacts_title' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contacts_title' . $language['language_id']] = $this->config->get('thebabyshop_contacts_title' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_mphone1' . $language['language_id']])) {
				$this->data['thebabyshop_contact_mphone1' . $language['language_id']] = $this->request->post['thebabyshop_contact_mphone1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_mphone1' . $language['language_id']] = $this->config->get('thebabyshop_contact_mphone1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_mphone2' . $language['language_id']])) {
				$this->data['thebabyshop_contact_mphone2' . $language['language_id']] = $this->request->post['thebabyshop_contact_mphone2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_mphone2' . $language['language_id']] = $this->config->get('thebabyshop_contact_mphone2' . $language['language_id']);
			}
			
			if (isset($this->request->post['thebabyshop_contact_sphone1' . $language['language_id']])) {
				$this->data['thebabyshop_contact_sphone1' . $language['language_id']] = $this->request->post['thebabyshop_contact_sphone1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_sphone1' . $language['language_id']] = $this->config->get('thebabyshop_contact_sphone1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_sphone2' . $language['language_id']])) {
				$this->data['thebabyshop_contact_sphone2' . $language['language_id']] = $this->request->post['thebabyshop_contact_sphone2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_sphone2' . $language['language_id']] = $this->config->get('thebabyshop_contact_sphone2' . $language['language_id']);
			}
			
			if (isset($this->request->post['thebabyshop_contact_fax1' . $language['language_id']])) {
				$this->data['thebabyshop_contact_fax1' . $language['language_id']] = $this->request->post['thebabyshop_contact_fax1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_fax1' . $language['language_id']] = $this->config->get('thebabyshop_contact_fax1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_fax2' . $language['language_id']])) {
				$this->data['thebabyshop_contact_fax2' . $language['language_id']] = $this->request->post['thebabyshop_contact_fax2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_fax2' . $language['language_id']] = $this->config->get('thebabyshop_contact_fax2' . $language['language_id']);
			}	
			
			if (isset($this->request->post['thebabyshop_contact_email1' . $language['language_id']])) {
				$this->data['thebabyshop_contact_email1' . $language['language_id']] = $this->request->post['thebabyshop_contact_email1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_email1' . $language['language_id']] = $this->config->get('thebabyshop_contact_email1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_email2' . $language['language_id']])) {
				$this->data['thebabyshop_contact_email2' . $language['language_id']] = $this->request->post['thebabyshop_contact_email2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_email2' . $language['language_id']] = $this->config->get('thebabyshop_contact_email2' . $language['language_id']);
			}		

			if (isset($this->request->post['thebabyshop_contact_skype1' . $language['language_id']])) {
				$this->data['thebabyshop_contact_skype1' . $language['language_id']] = $this->request->post['thebabyshop_contact_skype1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_skype1' . $language['language_id']] = $this->config->get('thebabyshop_contact_skype1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_skype2' . $language['language_id']])) {
				$this->data['thebabyshop_contact_skype2' . $language['language_id']] = $this->request->post['thebabyshop_contact_skype2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_skype2' . $language['language_id']] = $this->config->get('thebabyshop_contact_skype2' . $language['language_id']);
			}	
			
			if (isset($this->request->post['thebabyshop_contact_location1' . $language['language_id']])) {
				$this->data['thebabyshop_contact_location1' . $language['language_id']] = $this->request->post['thebabyshop_contact_location1' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_location1' . $language['language_id']] = $this->config->get('thebabyshop_contact_location1' . $language['language_id']);
			}
			if (isset($this->request->post['thebabyshop_contact_location2' . $language['language_id']])) {
				$this->data['thebabyshop_contact_location2' . $language['language_id']] = $this->request->post['thebabyshop_contact_location2' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_location2' . $language['language_id']] = $this->config->get('thebabyshop_contact_location2' . $language['language_id']);
			}	
			
			if (isset($this->request->post['thebabyshop_contact_hours' . $language['language_id']])) {
				$this->data['thebabyshop_contact_hours' . $language['language_id']] = $this->request->post['thebabyshop_contact_hours' . $language['language_id']];
			} else {
				$this->data['thebabyshop_contact_hours' . $language['language_id']] = $this->config->get('thebabyshop_contact_hours' . $language['language_id']);
			}	
			
			if (isset($this->request->post['thebabyshop_twitter_block_title' . $language['language_id']])) {
				$this->data['thebabyshop_twitter_block_title' . $language['language_id']] = $this->request->post['thebabyshop_twitter_block_title' . $language['language_id']];
			} else {
				$this->data['thebabyshop_twitter_block_title' . $language['language_id']] = $this->config->get('thebabyshop_twitter_block_title' . $language['language_id']);
			}	
			
			if (isset($this->request->post['thebabyshop_custom_title' . $language['language_id']])) {
				$this->data['thebabyshop_custom_title' . $language['language_id']] = $this->request->post['thebabyshop_custom_title' . $language['language_id']];
			} else {
				$this->data['thebabyshop_custom_title' . $language['language_id']] = $this->config->get('thebabyshop_custom_title' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_custom_content' . $language['language_id']])) {
				$this->data['thebabyshop_custom_content' . $language['language_id']] = $this->request->post['thebabyshop_custom_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_custom_content' . $language['language_id']] = $this->config->get('thebabyshop_custom_content' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_powered_content' . $language['language_id']])) {
				$this->data['thebabyshop_powered_content' . $language['language_id']] = $this->request->post['thebabyshop_powered_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_powered_content' . $language['language_id']] = $this->config->get('thebabyshop_powered_content' . $language['language_id']);
			}	
			if (isset($this->request->post['thebabyshop_about_content' . $language['language_id']])) {
				$this->data['thebabyshop_about_content' . $language['language_id']] = $this->request->post['thebabyshop_about_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_about_content' . $language['language_id']] = $this->config->get('thebabyshop_about_content' . $language['language_id']);
			}	
			
			if (isset($this->request->post['thebabyshop_custom_box_content' . $language['language_id']])) {
				$this->data['thebabyshop_custom_box_content' . $language['language_id']] = $this->request->post['thebabyshop_custom_box_content' . $language['language_id']];
			} else {
				$this->data['thebabyshop_custom_box_content' . $language['language_id']] = $this->config->get('thebabyshop_custom_box_content' . $language['language_id']);
			}														
		}

		$this->template = 'module/thebabyshop.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		
        if (isset($this->data['thebabyshop_left_right_column_head_custom']) && $this->data['thebabyshop_left_right_column_head_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_left_right_column_head_custom'])) {
            $this->data['thebabyshop_left_right_column_head_custom_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_left_right_column_head_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_left_right_column_head_custom_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	        		
        if (isset($this->data['thebabyshop_mid_prod_slider_custom']) && $this->data['thebabyshop_mid_prod_slider_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_mid_prod_slider_custom'])) {
            $this->data['thebabyshop_mid_prod_slider_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_mid_prod_slider_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_mid_prod_slider_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }		
        if (isset($this->data['thebabyshop_pattern_custom']) && $this->data['thebabyshop_pattern_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_pattern_custom'])) {
            $this->data['thebabyshop_pattern_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_pattern_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_pattern_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_bg_image_custom']) && $this->data['thebabyshop_bg_image_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_custom'])) {
            $this->data['thebabyshop_bg_image_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_pattern_custom_mc']) && $this->data['thebabyshop_pattern_custom_mc'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_pattern_custom_mc'])) {
            $this->data['thebabyshop_pattern_thumb_mc'] = $this->model_tool_image->resize($this->data['thebabyshop_pattern_custom_mc'], 100, 100);
        } else {
            $this->data['thebabyshop_pattern_thumb_mc'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_bg_image_mc_custom']) && $this->data['thebabyshop_bg_image_mc_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_mc_custom'])) {
            $this->data['thebabyshop_bg_image_mc_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_mc_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_mc_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }		
        if (isset($this->data['thebabyshop_pattern_custom_ta']) && $this->data['thebabyshop_pattern_custom_ta'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_pattern_custom_ta'])) {
            $this->data['thebabyshop_pattern_thumb_ta'] = $this->model_tool_image->resize($this->data['thebabyshop_pattern_custom_ta'], 100, 100);
        } else {
            $this->data['thebabyshop_pattern_thumb_ta'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_bg_image_ta_custom']) && $this->data['thebabyshop_bg_image_ta_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_ta_custom'])) {
            $this->data['thebabyshop_bg_image_ta_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_ta_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_ta_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	
        if (isset($this->data['thebabyshop_pattern_custom_mm']) && $this->data['thebabyshop_pattern_custom_mm'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_pattern_custom_mm'])) {
            $this->data['thebabyshop_pattern_thumb_mm'] = $this->model_tool_image->resize($this->data['thebabyshop_pattern_custom_mm'], 100, 100);
        } else {
            $this->data['thebabyshop_pattern_thumb_mm'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_bg_image_mm_custom']) && $this->data['thebabyshop_bg_image_mm_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_mm_custom'])) {
            $this->data['thebabyshop_bg_image_mm_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_mm_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_mm_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_pattern_custom_mmt']) && $this->data['thebabyshop_pattern_custom_mmt'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_pattern_custom_mmt'])) {
            $this->data['thebabyshop_pattern_thumb_mmt'] = $this->model_tool_image->resize($this->data['thebabyshop_pattern_custom_mmt'], 100, 100);
        } else {
            $this->data['thebabyshop_pattern_thumb_mmt'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['thebabyshop_bg_image_mmt_custom']) && $this->data['thebabyshop_bg_image_mmt_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_mmt_custom'])) {
            $this->data['thebabyshop_bg_image_mmt_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_mmt_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_mmt_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
		
	    if (isset($this->data['thebabyshop_bg_image_f1_custom']) && $this->data['thebabyshop_bg_image_f1_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_f1_custom'])) {
            $this->data['thebabyshop_bg_image_f1_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_f1_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_f1_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	
	    if (isset($this->data['thebabyshop_bg_image_f2_custom']) && $this->data['thebabyshop_bg_image_f2_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_f2_custom'])) {
            $this->data['thebabyshop_bg_image_f2_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_f2_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_f2_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	
	    if (isset($this->data['thebabyshop_bg_image_f4_custom']) && $this->data['thebabyshop_bg_image_f4_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_f4_custom'])) {
            $this->data['thebabyshop_bg_image_f4_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_f4_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_f4_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
	    if (isset($this->data['thebabyshop_bg_image_f5_custom']) && $this->data['thebabyshop_bg_image_f5_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_bg_image_f5_custom'])) {
            $this->data['thebabyshop_bg_image_f5_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_bg_image_f5_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_bg_image_f5_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }			
		
        if (isset($this->data['thebabyshop_payment_block_custom']) && $this->data['thebabyshop_payment_block_custom'] != "" && file_exists(DIR_IMAGE . $this->data['thebabyshop_payment_block_custom'])) {
            $this->data['thebabyshop_payment_block_custom_thumb'] = $this->model_tool_image->resize($this->data['thebabyshop_payment_block_custom'], 100, 100);
        } else {
            $this->data['thebabyshop_payment_block_custom_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }		
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		
		$this->response->setOutput($this->render());
	}
		
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/thebabyshop')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>