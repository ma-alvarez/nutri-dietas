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

function social_security() {
	$("#user_social_security_plan").prop("disabled", false);
	$("#user_social_security_number").prop("disabled", false);
	switch($('#user_social_security').val()) {
		case "PARTICULAR":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			$("#user_social_security_plan").prop("disabled", true);
			$("#user_social_security_number").prop("disabled", true);
			break;
		case "OSDE":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value="210"]').show();
			$("#user_social_security_plan").children('option[value="310"]').show();
			$("#user_social_security_plan").children('option[value="410"]').show();
			$("#user_social_security_plan").children('option[value="510"]').show();
			$("#user_social_security_plan").children('option[value="450"]').show();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('');
			break;
		case "DOSUBA":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value="GRADUADOS"]').show();
			$("#user_social_security_plan").children('option[value="ALUMNOS"]').show();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			break;

		case "SCIS":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value="50"]').show();
			$("#user_social_security_plan").children('option[value="100"]').show();
			$("#user_social_security_plan").children('option[value="150"]').show();
			$("#user_social_security_plan").children('option[value="250"]').show();
			$("#user_social_security_plan").children('option[value="300"]').show();
			$("#user_social_security_plan").children('option[value="500"]').show();
			$("#user_social_security_plan").children('option[value="550"]').show();
			$("#user_social_security_plan").children('option[value="600"]').show();
			$("#user_social_security_plan").children('option[value="1100"]').show();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			break;

		case "CORPOMEDICIM":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value="PREMIUM"]').show();
			$("#user_social_security_plan").children('option[value="GOLD_PREMIUM"]').show();
			$("#user_social_security_plan").children('option[value="AZUL"]').show();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			break;

		case "PREMEDIC":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value="0-50"]').show();
			$("#user_social_security_plan").children('option[value="100"]').show();
			$("#user_social_security_plan").children('option[value="PMO"]').show();
			$("#user_social_security_plan").children('option[value="C100"]').show();
			$("#user_social_security_plan").children('option[value="200"]').show();
			$("#user_social_security_plan").children('option[value="500"]').show();
			$("#user_social_security_plan").children('option[value="300"]').show();
			$("#user_social_security_plan").children('option[value="400"]').show();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			break;

		case "OTRA":
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			$("#user_social_security_plan").prop("disabled", true);
			$("#user_social_security_number").prop("disabled", true);
			break;

		default:
			$("#user_social_security_plan").children('option').hide();
			$("#user_social_security_plan").children('option[value=""]').show();
			$("#user_social_security_plan").val('')
			break; 

		}

}

function histories_js(){
	histories = [];
	for (i = 0; i < gon.histories.length; i++) { 
		var history = [new Date(gon.histories[i].date),parseFloat(gon.histories[i].weight)];
		histories.push(history)
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
	social_security();
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
	google.charts.setOnLoadCallback(drawChart);
		function drawChart() {
	        var data = new google.visualization.DataTable();
	        data.addColumn({ type: 'date', id: 'Fecha' });
	        data.addColumn({ type: 'number', id: 'Peso' });
	        data.addRows(histories_js());

	        var options = {
	          hAxis: {title:'Fecha'},
	          vAxis: {title:'Peso [kg]'},
	          chartArea: {width:'50%'},	
	          legend: 'none',
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('linechart_material'));
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