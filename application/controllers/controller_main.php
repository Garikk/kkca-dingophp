<?php

class Controller_Main extends Controller
{

	function action_index()
	{	
            $auth_state=false;
            if (!isset($_SESSION) || count($_SESSION)==0)
            {
                $targetpage="main_view.php";
                $auth_state=false;
            }
            else
            {
                extract($_SESSION);
            }
            
            if ($auth_state==false)
            {
		$this->view->generate('main_view.php', 'template_mp_view.php');
            }
            else if (!isset($page))
            {
                $this->view->generate('dashboard_view.php', 'template_mp_view.php');
            }
	}
}