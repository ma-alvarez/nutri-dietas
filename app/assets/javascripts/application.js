// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .
//= require twitter/bootstrap
//= require bootstrap
//= require bootstrap-datepicker

function how_meet() {
	if( ($('#how_meet_select').val() == "PACIENTE: ") || ($('#how_meet_select').val() == "DOCTOR: " ) || ($('#how_meet_select').val() == "OTRO: ") ) {
		$('#registration_how_meet').show();
		$('#how_meet_tag').show();
		$('#user_how_meet').val($('#how_meet_select').val().concat($('#registration_how_meet').val()));
	} else {
		$('#registration_how_meet').hide(); 
		$('#how_meet_tag').hide(); 
		$('#user_how_meet').val($('#how_meet_select').val());
	}
}

function half_vegetarian() {
	if( $('#registration_half_vegetarian').prop('checked') ) {
		$('#user_pork').attr('disabled', false);
		$('#user_meat').attr('disabled', false);
		$('#user_chicken').attr('disabled', false);
		$('#user_fish').attr('disabled', false);
		$('#alert-div').show();
	} else {
		$('#user_pork').attr('disabled', true);
		$('#user_pork').prop('checked', true);
		$('#user_meat').attr('disabled', true);
		$('#user_meat').prop('checked', true);
		$('#user_chicken').attr('disabled', true);
		$('#user_chicken').prop('checked', true);
		$('#user_fish').attr('disabled', true);
		$('#user_fish').prop('checked', true);
		$('#alert-div').hide();
	}      
}
function cancer() {
	if( $('#user_cancer').prop('checked') ) {
		$('#user_cancer_type').show();
		$('#cancer_type_label').show();
	} else {
		$('#user_cancer_type').hide();
		$('#cancer_type_label').hide();
		$('#user_cancer_type').val("");
	}      
}
function smoker() {
	if( $('#user_smoker').prop('checked') ) {
		$('#user_smoker_amount').show();
		$('#smoker_amount_label').show();
	} else {
		$('#user_smoker_amount').hide();
		$('#smoker_amount_label').hide();
		$('#user_smoker_amount').val("");
	}      
}
function menstruation() {
	if( $('#user_sex').val() == "F") {
		$('#user_menstruation').show();
		$('#menstruation_label').show();
	} else {
		$('#user_menstruation').hide();
		$('#menstruation_label').hide();
	}      
}
function allergies() {
	if( $('#allergies_true').val() == "SI") {
		$('#user_allergies').show();
		$('#user_allergies_label').show();
	} else {
		$('#user_allergies').hide();
		$('#user_allergies_label').hide();
		$('#user_allergies').val("");
	}      
}

function histories_weight(){
	histories = [];
	for (i = 0; i < gon.histories.length; i++) { 
		var history = [new Date(gon.histories[i].date),parseFloat(gon.histories[i].weight)];
		if (!Number.isNaN(history[1])) {
			histories.push(history)
		} 
	}
	return histories
}
function histories_waist(){
	histories = [];
	for (i = 0; i < gon.histories.length; i++) { 
		var history = [new Date(gon.histories[i].date),parseFloat(gon.histories[i].waist)];
		if (!Number.isNaN(history[1])) {
			histories.push(history)
		} 
	}
	return histories
}
function histories_hip(){
	histories = [];
	for (i = 0; i < gon.histories.length; i++) { 
		var history = [new Date(gon.histories[i].date),parseFloat(gon.histories[i].hip)];
		if (!Number.isNaN(history[1])) {
			histories.push(history)
		} 
	}
	return histories
}
function histories_leg(){
	histories = [];
	for (i = 0; i < gon.histories.length; i++) { 
		var history = [new Date(gon.histories[i].date),parseFloat(gon.histories[i].leg)];
		if (!Number.isNaN(history[1])) {
			histories.push(history)
		} 
	}
	return histories
}
function histories_fat(){
	histories = [];
	for (i = 0; i < gon.histories.length; i++) { 
		var history = [new Date(gon.histories[i].date),parseFloat(gon.histories[i].fat)];
		if (!Number.isNaN(history[1])) {
			histories.push(history)
		} 
	}
	return histories
}

$(document).on("ready page:change", function() {
	how_meet();
	allergies();
	cancer();
	smoker();
	half_vegetarian();
	menstruation();
	$(function () {
  		$('[data-toggle="tooltip"]').tooltip()
	})
	$('.datepicker').datepicker({
    	format: "dd/mm/yyyy",
    	startView: 2,
    	language: "es"
	});
	$('#how_meet_select').change(function () {how_meet();});
	$('#registration_how_meet').change(function () {how_meet();});
	$('#allergies_true').change(function () {allergies();});
	$('#user_cancer').bind('change',function () {cancer();});
	$('#user_sex').bind('change',function () {menstruation();});
	$('#user_smoker').bind('change',function () {smoker();});
	$('#registration_half_vegetarian').bind('change',function () {half_vegetarian();});
	$('#user_social_security').bind('change',function () {social_security();});

	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChartWeight);
		function drawChartWeight() {
	        var data = new google.visualization.DataTable();
	        data.addColumn({ type: 'date', id: 'Fecha' });
	        data.addColumn({ type: 'number', id: 'Peso' });
	        data.addRows(histories_weight());

	        var options = {
	          hAxis: {title:'Fecha'},
	          vAxis: {title:'Peso [kg]',minValue: 0},
	          chartArea: {width:'80%'},	
	          legend: 'none',
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('linechart_weight'));
	        chart.draw(data, options);

	      }
	google.charts.setOnLoadCallback(drawChartWaist);
		function drawChartWaist() {
	        var data = new google.visualization.DataTable();
	        data.addColumn({ type: 'date', id: 'Fecha' });
	        data.addColumn({ type: 'number', id: 'Cintura' });
	        data.addRows(histories_waist());

	        var options = {
	          hAxis: {title:'Fecha'},
	          vAxis: {title:'Cintura [cm]'},
	          chartArea: {width:'80%'},	
	          legend: 'none',
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('linechart_waist'));
	        chart.draw(data, options);

	      }
	google.charts.setOnLoadCallback(drawChartHip);
		function drawChartHip() {
	        var data = new google.visualization.DataTable();
	        data.addColumn({ type: 'date', id: 'Fecha' });
	        data.addColumn({ type: 'number', id: 'Cadera' });
	        data.addRows(histories_hip());

	        var options = {
	          hAxis: {title:'Fecha'},
	          vAxis: {title:'Cadera [cm]'},
	          chartArea: {width:'80%'},	
	          legend: 'none',
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('linechart_hip'));
	        chart.draw(data, options);

	      }
	google.charts.setOnLoadCallback(drawChartLeg);
		function drawChartLeg() {
	        var data = new google.visualization.DataTable();
	        data.addColumn({ type: 'date', id: 'Fecha' });
	        data.addColumn({ type: 'number', id: 'Pierna' });
	        data.addRows(histories_leg());

	        var options = {
	          hAxis: {title:'Fecha'},
	          vAxis: {title:'Pierna [cm]'},
	          chartArea: {width:'80%'},	
	          legend: 'none',
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('linechart_leg'));
	        chart.draw(data, options);

	      }
	google.charts.setOnLoadCallback(drawChartFat);
		function drawChartFat() {
	        var data = new google.visualization.DataTable();
	        data.addColumn({ type: 'date', id: 'Fecha' });
	        data.addColumn({ type: 'number', id: 'Grasa' });
	        data.addRows(histories_fat());

	        var options = {
	          hAxis: {title:'Fecha'},
	          vAxis: {title:'Grasa [kg]',minValue: 0},
	          chartArea: {width:'80%'},	
	          legend: 'none',
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('linechart_fat'));
	        chart.draw(data, options);

	      }

google.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('string', '');
      data.addColumn('number', 'Peso [kg]');

      data.addRows([
        ['Peso inicial', parseFloat(gon.first_weight)],
        ['Peso actual', parseFloat(gon.last_weight)],
        ['Peso objetivo', parseFloat(gon.weight_exp)],
      ]);

      var options = {
        chartArea: {width:'50%'},
      };

      var chart = new google.visualization.ColumnChart(
        document.getElementById('chart_div'));

      chart.draw(data, options);
    }
	
});