<?php

class Controller_mplayer extends Controller
{

    function __construct() {
         parent::__construct();
        $this->model = new model_mplayer();
    }

    function action_index() {
        $myscripts="<script src='/kk/js/kk.mplayer.js'></script><script>tpl_adm_OnLoad();mpl_OnLoad()</script>";
        $this->view->generate('mplayer_view.php', 'template_adm_page.php',$myscripts);

    }

}
