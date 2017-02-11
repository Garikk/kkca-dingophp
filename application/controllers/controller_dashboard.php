<?php

class Controller_Dashboard extends Controller {

    function action_index() {
        $this->view->generate('dashboard_view.php', 'template_adm_page.php');
    }

}
