<?php

/* 
 * Copyright (C) 2016 Garikk
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

class model_dashboard extends Model {

    function __construct() {
        $this->dbc = new dbconnection();
    }

    public function dbrd_get_inform_panels() {

        $query = "SELECT * "
                . "FROM `dw_kk_dashboard_infopanels` "
                . "JOIN `dw_plugins` "
                . "ON `dw_kk_dashboard_infopanels`.`owner`=dw_plugins.id "
                . "WHERE dw_plugins.enabled=1 ";

        $result = $this->dbc->ExecQuery($query);
        //
        $Ret=$result;
        //
        return $Ret;
    }
 public function dbrd_get_chart_avg_data() {

        $query = "SELECT "
                . "dw_kk_historystore.timestamp, "
                . "dw_kk_historystore.value, "
                . "odb_pids.descriptionodb, "
                . "kkiot.name "
                . "FROM `dw_kk_historystore` "
                . "join odb_pids "
                . "on odb_pids.PID=dw_kk_historystore.measure "
                . "join kkcar "
                . "on kkiot.id=dw_kk_historystore.kkcar "
                . " where kkiot.id=1";

        $result = $this->dbc->ExecQuery($query);
        //
        $Ret=$result;
        //
        return $Ret;
    }
}
