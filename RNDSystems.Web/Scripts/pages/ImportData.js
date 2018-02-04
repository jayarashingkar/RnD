$(document).ready(function () {

    $('#ddTestTypes').attr({ 'data-live-search': 'true', 'data-width': '90%' }).selectpicker();

    //Currently disabled - Can be used in next version for Manual Import

    $('#ddWorkStudyId').attr({ 'data-live-search': 'true', 'data-width': '90%' }).selectpicker();
    $('#ddWorkStudyId').attr("disabled", "disabled");
    $('#ddTestNos').attr({ 'data-live-search': 'true', 'data-width': '90%' }).selectpicker();
    $('#ddTestNos').attr("disabled", "disabled");

 //   $("#ddTestTypes").change(function () {
    $('#btnImport').on('click', function () {
        var selectedTestType = $.trim($("#ddTestTypes").val());      
     
        var options = {          
            Message: selectedTestType,
        };
       
        $.ajax({
            type: 'post',
            url: Api + 'api/ImportData',
            headers: {
                Token: GetToken()
            },
            data: options
        }) 
            .done(function (data) {
              
                if (data) {
                    $('#lblImported').text("Imported:" + selectedTestType + "data");
                   
                }
                else {
                    $('#lblImported').text("Import Error");
                }

            });
    });
});