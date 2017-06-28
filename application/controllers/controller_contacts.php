    <?php

class Controller_Contacts extends Controller
{
	
	function action_index()
	{
		$this->view->generate('contacts_view.php', 'template_adm_page.php');
	}
}
