<?php 
class ControllerProductCategory extends Controller {  

    public function next_page() {
        $this->language->load('product/category');

        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $this->load->model('tool/image');

        if (isset($this->request->get['filter'])) {
            $filter = $this->request->get['filter'];
        } else {
            $filter = '';
        }

        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'p.sort_order';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        if (isset($this->request->get['limit'])) {
            $limit = $this->request->get['limit'];
        } else {
            $limit = $this->config->get('config_catalog_limit');
        }

        if (isset($this->request->get['path'])) {
            $path = '';

            $parts = explode('_', (string)$this->request->get['path']);

            $category_id = array_pop($parts);
        } else {
            $category_id = 0;
        }

        $category_info = $this->model_catalog_category->getCategory($category_id);

        if ($category_info) {
            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $this->data['text_tax'] = $this->language->get('text_tax');

            $this->data['button_cart'] = $this->language->get('button_cart');
            $this->data['button_wishlist'] = $this->language->get('button_wishlist');
            $this->data['button_compare'] = $this->language->get('button_compare');

            $this->data['cit_status'] = $this->config->get('custom_image_titles_status');

            $this->data['products'] = array();

            $data = array(
                'filter_category_id' => $category_id,
                'filter_filter'      => $filter,
                'sort'               => $sort,
                'order'              => $order,
                'start'              => ($page - 1) * $limit,
                'limit'              => $limit
            );

            $results = $this->model_catalog_product->getProducts($data);

            foreach ($results as $result) {
                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                } else {
                    $image = false;
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price = false;
                }

                if ((float)$result['special']) {
                    $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $special = false;
                }

                if ($this->config->get('config_tax')) {
                    $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
                } else {
                    $tax = false;
                }

                if ($this->config->get('config_review_status')) {
                    $rating = (int)$result['rating'];
                } else {
                    $rating = false;
                }

                $this->data['products'][] = array(
                        'product_id'  => $result['product_id'],
                        'thumb'       => $image,
                        'image_alt'   => isset($result['alt_text']) ? $result['alt_text'] : '',
                        'image_title' => isset($result['title_text']) ? $result['title_text'] : '',
                        'name'        => $result['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
                        'brand'       => $result['manufacturer'],
                        'price'       => $price,
                        'special'     => $special,

		'saving'      => round((($result['price'] - $result['special'])/$result['price'])*100, 0),
		
                        'stock_status' =>$result['stock_status'],
                        'tax'         => $tax,
                        'rating'      => $result['rating'],
                        'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
                        'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
                );
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category_products.tpl')) {
                $this->template = $this->config->get('config_template') . '/template/product/category_products.tpl';
            } else {
                $this->template = 'thebabyshop/template/product/category_products.tpl';
            }

            $resp = array("success" => 1, "data" => $this->render());

            $this->response->setOutput(json_encode($resp));
        }
    }
            
	public function index() { 
		$this->language->load('product/category');
		
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image'); 
		
		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}
				
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}	
							
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
		}
							

            if ($this->config->get('endless_scroller_status')) {
                $pages = 0;
                $end_page = isset($page) ? $page : 1;
                if (!isset($this->request->get['page']) && isset($this->request->get['pages'])) {
                    if (strpos($this->request->get['pages'], "-")) {
                        $span = explode("-", $this->request->get['pages']);
                        if (count($span) == 2) {
                            list($page, $end_page) = $span;
                        }
                    } else {
                        $page = 1;
                        $end_page = $this->request->get['pages'];
                    }
                    if ((int)$end_page > (int)$page) {
                        if (($end_page - $page + 1) * $limit > (int)$this->config->get('es_max_items_per_load')) {
                            $end_page = floor(((int)$this->config->get('es_max_items_per_load') / $limit) - 1 + $page);
                        }
                        $pages = $end_page - $page;
                        $limit = ($end_page - $page + 1) * $limit;
                    } else {
                        $page = 1;
                    }
                }
            }
            
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
       		'separator' => false
   		);	

		if (isset($this->request->get['path'])) {
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}					
			$path = '';
			$parts = explode('_', (string)$this->request->get['path']);
			$category_id = (int)array_pop($parts);
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
				$c_info = $this->model_catalog_category->getParentId($path_id);
				if($c_info){
					$pmenu=$c_info['parent_id'];
				}else{
					$pmenu='0';
				}
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
                                        'href'      => $this->url->link('product/category', 'path=' . $path . $url),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}
		} else {
			$category_id = 0;
		}
		if(isset($pmenu)){
			$this->session->data['pmenu']=$pmenu;
		}else{
			$this->session->data['pmenu']=$category_id;
		}
		//$this->log->write($category_id);
				
		$category_info = $this->model_catalog_category->getCategory($category_id);
	
		if ($category_info) {
	  		($category_info['custom_title'] == '')?$this->document->setTitle($category_info['name']):$this->document->setTitle($category_info['custom_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

				$pathx = explode('_', $this->request->get['path']);
				$pathx = end($pathx);
				$this->document->addLink($this->url->link('product/category', 'path=' . $pathx ), 'canonical');
			
			$this->document->addScript('catalog/view/javascript/jquery/jquery.total-storage.min.js');
			$this->data['heading_title'] = $category_info['name'];
			$this->data['text_refine'] = $this->language->get('text_refine');
			$this->data['text_empty'] = $this->language->get('text_empty');			
			$this->data['text_quantity'] = $this->language->get('text_quantity');
			$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$this->data['text_model'] = $this->language->get('text_model');
			$this->data['text_price'] = $this->language->get('text_price');
			$this->data['text_tax'] = $this->language->get('text_tax');
			$this->data['text_points'] = $this->language->get('text_points');
			$this->data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$this->data['text_display'] = $this->language->get('text_display');
			$this->data['text_list'] = $this->language->get('text_list');
			$this->data['text_grid'] = $this->language->get('text_grid');
			$this->data['text_sort'] = $this->language->get('text_sort');
			$this->data['text_limit'] = $this->language->get('text_limit');
			$this->data['text_sale'] = $this->language->get('text_sale');
			$this->data['button_cart'] = $this->language->get('button_cart');
			$this->data['button_wishlist'] = $this->language->get('button_wishlist');
			$this->data['button_compare'] = $this->language->get('button_compare');
			$this->data['button_continue'] = $this->language->get('button_continue');
			// Set the last category breadcrumb		
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}					
			$this->data['breadcrumbs'][] = array(
				'text'      => $category_info['name'],
				'href'      => $this->url->link('product/category', 'path=' . $this->request->get['path']),
				'separator' => $this->language->get('text_separator')
			);			
			if ($category_info['image']) {
				$this->data['thumb'] = $this->model_tool_image->resize2($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
			} else {
				$this->data['thumb'] = '';
			}					
			$this->data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$this->data['compare'] = $this->url->link('product/compare');
			$url = '';
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}		
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}			
			$this->data['categories'] = array();
			$results = $this->model_catalog_category->getCategories($category_id);
			foreach ($results as $result) {
				$sub_children_data = array();
				$data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);
				$sub_children = $this->model_catalog_category->getCategories($result['category_id']);
				foreach ($sub_children as $sub_child) {
					if ($sub_child['image']) {
						$image = $this->model_tool_image->resize2($sub_child['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					} else {
						$image = false;
					}
					$sub_children_data[] = array(
						'column'=>$sub_child['column'],
						'name'  => $sub_child['name'],
						'thumb'	=>	$image,
						'href'  => $this->url->link('product/category', 'path=' . $sub_child['category_id'] . '_' . $sub_child['category_id'])
					);
				}
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = false;
				}

            if ($this->config->get('endless_scroller_status')) {
                $_limit = (isset($this->request->get['limit'])) ? $this->request->get['limit'] : $this->config->get('config_catalog_limit');
                $data['start'] = ($page - 1) * $_limit;
            }
            
				//$product_total = $this->model_catalog_product->getTotalProducts($data);				
				$this->data['categories'][] = array(
					'name' => $result['name'],
					'thumb'	=>	$image,
					'children'=>$sub_children_data,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}
			$this->data['products'] = array();
			$data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter, 
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

            if ($this->config->get('endless_scroller_status')) {
                $_limit = (isset($this->request->get['limit'])) ? $this->request->get['limit'] : $this->config->get('config_catalog_limit');
                $data['start'] = ($page - 1) * $_limit;
            }
            
			$product_total = $this->model_catalog_product->getTotalProducts($data); 

            $this->data['es_status'] = $this->config->get('endless_scroller_status');
            if ($this->config->get('endless_scroller_status')) {
                $url = '';

                if (isset($this->request->get['filter'])) {
                    $url .= '&filter=' . $this->request->get['filter'];
                }

                if (isset($this->request->get['sort'])) {
                    $url .= '&sort=' . $this->request->get['sort'];
                }

                if (isset($this->request->get['order'])) {
                    $url .= '&order=' . $this->request->get['order'];
                }

                if (isset($this->request->get['limit'])) {
                    $url .= '&limit=' . $this->request->get['limit'];
                }

                $page = ($page > 0) ? $page : 1;
                $current_page = (($page + $pages) * $_limit > $product_total) ? ceil($product_total / $_limit) : $page + $pages;
                $this->data['text_more_results'] = $this->language->get('text_more_results');
                $this->data['text_showing'] = $this->language->get('text_showing');
                $this->data['text_loading'] = $this->language->get('text_loading');
                $this->data['bottom_pixels'] = $this->config->get('es_bottom_pixels');
                $this->data['use_fade_in'] = $this->config->get('es_use_fade_in');
                $this->data['start_page'] = $page;
                $this->data['current_page'] = $current_page;
                //$this->data['next_page_link'] = html_entity_decode($this->url->link('product/category/next_page', 'path=' . $this->request->get['path'] . $url . '&page=')); // SEO URLs do not work here, because the URL library does not create a valid link
                $this->data['next_page_link'] = html_entity_decode('index.php?route=product/category/next_page&path=' . $this->request->get['path'] . $url . '&page=');
                $this->data['total_products'] = $product_total;
                $this->data['page_limit'] = $_limit;
                $this->data['use_more'] = $this->config->get('es_use_more');
                $this->data['use_more_after'] = $this->config->get('es_use_more_after');
                $this->data['auto_load_counter'] = ($current_page - 1) % ((int)$this->config->get('es_use_more_after') + 1);
                $this->data['use_back_top'] = $this->config->get('es_use_back_to_top');
                $this->data['use_sticky_footer'] = $this->config->get('es_use_sticky_footer');
            }
            
			$results = $this->model_catalog_product->getProducts($data);
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = false;
				}
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}			
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
                                        'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'brand'       => $result['manufacturer'],
                                        'stock_status' =>$result['stock_status'],
					'price'       => $price,
					'special'     => $special,

		'saving'      => round((($result['price'] - $result['special'])/$result['price'])*100, 0),
		
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}
			$url = '';
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}						
			$this->data['sorts'] = array();
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);
//			$this->data['sorts'][] = array(
//				'text'  => $this->language->get('text_new'),
//				'value' => 'p.date_added-ASC',
//				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.date_added&order=DESC' . $url)
//			);
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			); 
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			); 
			if ($this->config->get('config_review_status')) {
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				); 
				
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}		
			$url = '';
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			$this->data['limits'] = array();
			$limits = array_unique(array($this->config->get('config_catalog_limit'), 25, 50, 75, 100));
			sort($limits);
			foreach($limits as $limits){
				$this->data['limits'][] = array(
					'text'  => $limits,
					'value' => $limits,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $limits)
				);
			}
			$url = '';
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
			if (isset($this->request->get['order'])) {
                                $url .= '&order=' . $this->request->get['order'];
                        }
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
			$pagination = new Pagination();
			//$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');
			$this->data['pagination'] = $pagination->render();
			$this->data['sort'] = $sort;
			$this->data['order'] = $order;
			$this->data['limit'] = $limit;
			$this->data['continue'] = $this->url->link('common/home');
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/category.tpl';
			} else {
				$this->template = 'default/template/product/category.tpl';
			}
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);
			$this->response->setOutput($this->render());										
                        } else {
			$url = '';
			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}								
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}		
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}		
			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_error'),
				'href'      => $this->url->link('product/category', $url),
				'separator' => $this->language->get('text_separator')
			);
			$this->document->setTitle($this->language->get('text_error'));
                        $this->data['heading_title'] = $this->language->get('text_error');
                        $this->data['text_error'] = $this->language->get('text_error');
                        $this->data['button_continue'] = $this->language->get('button_continue');
                        $this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
			} else {
				$this->template = 'default/template/error/not_found.tpl';
			}
			
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);
					
			$this->response->setOutput($this->render());
		}
  	}
}
?>