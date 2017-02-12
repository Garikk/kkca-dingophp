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

class model_services extends Model {

    function __construct() {
        $this->dbc = new dbconnection();
    }

    public function dw_get_avail_plugins() {

        $query = "SELECT"
                . " name_lc,"
                . " link"
                . " FROM"
                . "     dw_plugins"
                . " WHERE"
                . "     enabled=1";

        $result = $this->dbc->ExecQuery($query);
        //
        $Ret=$result;
        //
        return $Ret;
    }

}
