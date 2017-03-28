<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of model_kkcontroller
 *
 * @author blinov_is
 */
class model_configuration extends Model {

    function __construct() {
        $this->dbc = new dbconnection();
    }

    public function get_getconfinfo($MyID) {
        $query= "SELECT "
                        . "  kkiot_confinfo.id as paramid, "
                        . "  kkiot_confinfo.carinfo as carinfo, "
                        . "  configurations.name as confname, "
                        . "  configurations.stamp as confversion_act, "
                        . "  kkiot_confinfo.configversion as confversion_kkc, "
                        . "  kkiot_confinfo.kkcontrollerversion as kkcversion,	"
                        . "  kkiot_confinfo.osversion as osversion,	"
                        . "  kkiot_confinfo.confstatus as kkcconfstatus,	"
                        . "  kkiot_confinfo.carstatus as carstatus,	"
                        . "  kkiot_confinfo.timestamp as timestamp,	"
                        . "  kkiot_confinfo.enginestatus as enginestatus	"
                        . " FROM "
                        . "  kkiot_confinfo,configurations "
                        . " WHERE "
                        . "  kkiot_confinfo.kkiot=configurations.id "
                        . " AND "
                        . "  kkiot_confinfo.kkiot IN "
                        . "  (SELECT "
                        . "      kkiot.id "
                        . "   FROM "
                        . "      kkiot "
                        . "   WHERE "
                        //. "      kkiot.uuid ='".$MyID."')";
                        . "      kkiot.uuid IN (".  implode(",", array("'".$MyID."'"))."))";
        
    
        
        return $this->dbc->ExecQuery($query);
    }

    public function get_activecommands($MyID) {

        return $this->dbc->ExecQuery(
                        " SELECT"
                        . "     kkiot_commands.id as paramid,"
                        . "     kkiot_commands.description as desc,"
                        . "     kkiot_commands.status as status"
                        . " FROM "
                        . " kkiot_commands "
                        . " WHERE "
                        . "     (kkiot_commands.status>=1)"
                        . " AND"
                        . "     kkiot_commands.kkiot = "
                        . "     (SELECT "
                        . "         kkiot.id "
                        . "      FROM "
                        . "         kkiot "
                        . "      WHERE "
                        . "         kkiot.uuid='".$MyID."')");
    }
    
     public function get_pluginsconfiguration($MyID) {

        return $this->dbc->ExecQuery(
                       "SELECT "
                        . "  configurations.uuid as confuid, "
                        . "  configurations.configuration as configuration, "
                        . "  configurations.configurationtype as conftype, "
                        . "  configurations.description as confdescription	"
                        . " FROM "
                        . "  configurations,kkiot "
                        . " WHERE "
                        . "  configurations.ownerconf=kkiot.activeconfiguration "
                        . " AND "
                        . "  kkiot.uuid='".$MyID."' ");
    

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
    