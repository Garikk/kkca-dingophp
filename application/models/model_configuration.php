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
class model_configuration extends Model {

    function __construct() {
        $this->dbc = new dbconnection();
    }

    public function cnf_get_loginfo($MyID,$kkIotId) {
        $query= "SELECT timestamp,"
                . "kkcar_messages_types.id,"
                . "kkcar_messages_types.name,"
                . "message "
                . "FROM `kkcar_messages` "
                . "JOIN kkcar_messages_types "
                . "ON kkcar_messages_types.id=kkcar_messages.msg_type "
                . "JOIN kkcar "
                . "on kkcar.id=kkcar_messages.kkcar "
                . "WHERE kkcar.active=1 "
                . "and kkcar.owner=".$MyID.""
                . "and kkcar.id=".$kkIotId;
        
        return $this->dbc->ExecQuery($query);
    }
}
    