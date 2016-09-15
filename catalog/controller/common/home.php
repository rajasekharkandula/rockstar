<?php
class ControllerCommonHome extends Controller {
	public function index() {
		
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
		$this->load->model('extension/module');
		$setting_info = $this->model_extension_module->getModule(27);
		$data['slideshow'] = $this->load->controller('module/slideshow',$setting_info);
		
		$data['trending'] = $this->load->controller('module/trending');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
	public function home() {
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
		
		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		//$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
		
		$this->document->addStyle('catalog/view/javascript/jquery/fsvs/style.css');
		$this->document->addScript('catalog/view/javascript/jquery/fsvs/bundle.js');
		
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		
		$data['base'] = $server;
		$data['title'] = $this->config->get('config_meta_title');
		$data['description'] = $this->config->get('config_meta_description');
		$data['keywords'] = $this->config->get('config_meta_keyword');
		
		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
		
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}
		
		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}
		$data['name'] = $this->config->get('config_name');
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');
		$data['class'] = 'common-home';
		$data['home'] = $this->url->link('common/home');
		
		$data['banners'] = array();
		
		$results = $this->model_design_banner->getBanner(5);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'type'  => $result['type'],
					'image' => $image = $this->config->get('config_ssl') . 'image/'.$result['image']
				);
			}
		}
		
		
		$this->response->setOutput($this->load->view('common/landing', $data));
	}
	
}