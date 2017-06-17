<?php

class Controller_configuration extends Controller {

    function __construct() {
         parent::__construct();
        $this->model = new model_configuration();
    }

    function action_index() {
        $myscripts="<script src='/kk/js/kk.dashboard.js'></script><script>tpl_adm_OnLoad();dbr_OnLoad()</script>";
        $this->view->generate('configuration_view.php', 'template_adm_page.php',$myscripts);

    }

    function action_dbrd_getinfopanels() {
        echo json_encode($this->model->dbrd_get_inform_panels(), JSON_UNESCAPED_UNICODE);
    }
 function action_dbrd_get_agvcharts_data() {
        echo json_encode($this->model->dbrd_get_chart_avg_data(), JSON_UNESCAPED_UNICODE);
    }
}
