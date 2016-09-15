<?php
class ControllerCommonAboutus extends Controller {
	
	
	function index(){
		$data = $this->content();
		$data['page'] = 'ABOUT_US';
		$data['sub_header'] = $this->load->view('about_us/header', $data,true);
		$this->response->setOutput($this->load->view('about_us/about_us', $data));
	}
	function profile(){
		$data = $this->content();
		$data['page'] = 'PROFILE';
		$data['sub_header'] = $this->load->view('about_us/header', $data,true);
		$this->response->setOutput($this->load->view('about_us/profile', $data));
	}
	function profile2(){
		$data = $this->content();
		$data['page'] = 'PROFILE2';
		$data['sub_header'] = $this->load->view('about_us/header', $data,true);
		$this->response->setOutput($this->load->view('about_us/profile2', $data));
	}
	function our_products(){
		$data = $this->content();
		$data['page'] = 'OUR_PRODUCTS';
		$data['sub_header'] = $this->load->view('about_us/header', $data,true);
		$this->response->setOutput($this->load->view('about_us/our_products', $data));
	}
	function content(){
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
		//$data['home'] = $this->url->link('common/home');
		$data['home'] = $server;
		return $data;
	}
	
}