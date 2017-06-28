<?php

class Controller_configuration extends Controller {

    function __construct() {
         parent::__construct();
        $this->model = new model_configuration();
    }

    function action_index() {
        $myscripts="<script src='/kk/js/kk.configuration.js'></script><script>tpl_adm_OnLoad();cnf_OnLoad()</script>";
        $this->view->generate('configuration_view.php', 'template_adm_page.php',$myscripts);

    }

    function action_cnf_get_loginfo() {
        $kkiotid=1;
        $deviceid=1;
        echo json_encode($this->model->cnf_get_loginfo($kkiotid,$deviceid), JSON_UNESCAPED_UNICODE);
    }
}
