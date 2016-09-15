<?php
class ControllerModuleTrending extends Controller {
	public function index() {
		$this->load->model('design/layout');

		$layout_id = 0;

		
		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}
		
		$this->load->model('extension/module');

		$data['modules'] = array();

		$modules = $this->model_design_layout->getLayoutModules(1, 'trending');
		//var_dump($modules);exit();	
		foreach ($modules as $module) {
			$part = explode('.', $module['code']);
			$module_data['name'] = $part[0];
			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$module_data['code'] = $this->load->controller('module/' . $part[0]);

				if ($module_data['code']) {
					$data['modules'][] = $module_data;
				}
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$module_data['code'] = $this->load->controller('module/' . $part[0], $setting_info);

					if ($module_data['code']) {
						$data['modules'][] = $module_data;
					}
				}
			}
		}

		return $this->load->view('module/trending', $data);
	}
}
