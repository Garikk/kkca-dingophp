/* 
 * Copyright (C) 2017 Garikk
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


function dbr_OnLoad()
{
    dbr_reqInfoPanels();
    dbr_reqChartData();
}

function dbr_reqInfoPanels()
{
    $.getJSON('/dashboard/dbrd_getinfopanels/', function (Data) {
        dbr_AddInfoPanels(Data);
    });
}

function  dbr_reqChartData()
{
    $.getJSON('/dashboard/dbrd_get_agvcharts_data/', function (Data) {
        dbr_FillInfoCharts(Data);
    });
}

function dbr_AddInfoPanels(Data)
{
    //Clear old menu
    $("#info-panel-area").empty();
    Data.forEach(function (item, i, arr) {
        //Fill Plugin items
        Panel="<div class='col-lg-3 col-md-6'>"+
               " <div class='panel panel-"+item['color']+"'>"+
               "     <div class='panel-heading'>"+
               "         <div class='row'>"+
               "             <div class='col-xs-3'>"+
               "                 <i class='fa "+item['iconstyle']+" fa-5x'></i>"+
               "             </div>"+
               "             <div class='col-xs-9 text-right'>"+
               "                 <div class='huge'>"+item['huge']+"</div>"+
               "                 <div>"+item['comment']+"</div>"+
               "             </div>"+
               "         </div>"+
               "     </div>"+
               "     <a href='#'>"+
               "         <div class='panel-footer'>"+
               "             <span class='pull-left'>Подробнее</span>"+
               "             <span class='pull-right'><i class='fa fa-arrow-circle-right'></i></span>"+
               "             <div class='clearfix'></div>"+
               "         </div>"+
               "     </a>"+
               " </div>"+
               "</div>";
            $("#info-panel-area").append(Panel);
    });
    
}

function dbr_FillInfoCharts(Data)
{

    $("#morris-area-chart").empty();
    var DatForChart = [];
    var ItemName = [];
    var ItemName2 = [];
    var date = new Date();
    Data.forEach(function (item, i, arr) {
        date.setTime(item['timestamp'] * 1000);
        DatForChart.push({'period': date.toLocaleDateString(), kkiot: item['value']});
        ItemName[0] = "kkiot";
        ItemName2[0] = item['name'];
    });
    Morris.Area({
        element: 'morris-area-chart',
        data: DatForChart,
        xkey: 'period',
        ykeys: ItemName,
        labels: ItemName2,
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    
    
}