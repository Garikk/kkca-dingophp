<?php

/* 
 * Copyright (C) 2017 Garikk.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301  USA
 */

class Controller_controllermanage extends Controller {
    function __construct() {
        //	$this->model = new Model_Portfolio();
        $this->view = new View();
        $this->model = new model_controllermanage();
    }

    function action_index() {
        $myscripts="<script>tpl_adm_OnLoad()</script>";		
        $this->view->generate('controllermanage_view.php', 'template_adm_page.php', $myscripts);
    }

}
