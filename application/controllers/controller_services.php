<?php

class Controller_Services extends Controller {

    function __construct() {
        $this->model = new model_services();
    }

    function action_index() {
        $this->view->generate('services_view.php', 'template_view.php');
    }

    function action_dw_svcs_plugins_getplugins() {
        echo json_encode($this->model->dw_get_avail_plugins(),JSON_UNESCAPED_UNICODE);
        die();
    }

    function action_dw_svcs_kkcar_getavail_devices() {
        $userid = 1; //TEMPORARY, CHANGE IT
        echo json_encode($this->model->dw_get_avail_kkcar_devices($userid), JSON_UNESCAPED_UNICODE);
    }
    function action_dw_svcs_kkcar_getactive_device() {
        $userid = 1; //TEMPORARY, CHANGE IT
        echo json_encode($this->model->dw_get_active_kkcar_device($userid), JSON_UNESCAPED_UNICODE);
    }
}
