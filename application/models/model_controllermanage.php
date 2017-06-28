<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of model_kkcontroller
 *
 * @author Garikk
 */
class model_controllermanage extends Model {

    function __construct() {
        $this->dbc = new dbconnection();
    }

    public function get_plugins() {

        return $this->dbc->ExecQuery(
                       " SELECT "
                       ."         plugins.id, "
                        ."        plugins.uuid, "
                        ."        plugins.name, "
                        ."        plugins.description, "
                        ."        plugins.pins_in, "
                        ."        plugins.pins_out "
                        ." FROM "
                        ."        plugins");
    

    }
}
    