<?php  
class ControllerModuleCategory extends Controller {
	protected function index($setting) {
		$this->language->load('module/category');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}
		
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}
							
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);
		$sub='0';
		foreach ($categories as $category) {
			$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category['category_id']));

			$children_data = array();

			$children = $this->model_catalog_category->getCategories($category['category_id']);

			foreach ($children as $child) {
				$sub_children_data = array();
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);

				$product_total = $this->model_catalog_product->getTotalProducts($data);

				$sub_children = $this->model_catalog_category->getCategories($child['category_id']);
				foreach ($sub_children as $sub_child) {
					$sub_data = array(
						'filter_category_id'  => $sub_child['category_id'],
						'filter_sub_category' => true
					);
					$sub_product_total = $this->model_catalog_product->getTotalProducts($sub_data);
					
					$sub_children_data[] = array(
						'column'=>$sub_child['column'],
						'name'  => $sub_child['name'] . ($this->config->get('config_product_count') ? ' (' . $sub_product_total . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $child['category_id'] . '_' . $sub_child['category_id'])
					);
				}
				$total += $product_total;

				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	,
					'sub_children' => $sub_children_data
				);		
			}
			
			if(!empty($children_data)){
				$this->data['categories'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : ''),
					'children'    => $children_data,
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
				);	
			}
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category.tpl';
		} else {
			$this->template = 'default/template/module/category.tpl';
		}
		
		$this->render();
  	}
}
?>