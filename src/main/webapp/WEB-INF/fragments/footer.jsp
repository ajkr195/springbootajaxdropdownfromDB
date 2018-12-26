
<script src="/webjars/jquery/3.3.1-1/jquery.min.js/"></script>
<script src="/webjars/popper.js/1.14.3/umd/popper.min.js/"></script>
<script src="/webjars/datatables/1.10.19/js/jquery.dataTables.min.js/"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js/"></script>



<script type="text/javascript">
   $(document).ready(function() {
    $("#countryId").change(function() {
      var countryId = $(this).find(":selected").val();
      var json = {
       "countryId" : countryId
      };
 
      $.ajax({
       type : "POST",
       contentType : "application/json",
       url : "/loadCityByCountry",
       data : JSON.stringify(json),
       dataType : 'json',
       cache : false,
       timeout : 600000,
       success : function(data) {
        var html = '';
        var len = data.length;
//         html += '<option value="0"></option>'; 
        for (var i = 0; i < len; i++) {
         html += '<option value="' + data[i].id + '">'
           + data[i].name
           + '</option>';
        }
//         html += '</option>';
        
        var strBuilder = [];
        for(key in json){
              if (json.hasOwnProperty(key)) {
                 strBuilder.push("Key is " + key + ", value is " + json[key] + "\n");
            }
        }
        console.log(strBuilder + ' Country selected..!!' );
        
        $('#cityId').html(html);
        console.log('Corresponding cities loaded..!!');
       },
       error : function(e) {
        alert(e);
        console.log('Error Occurred..!!');
       }
      });
    });
   });
  </script>


<footer class="footer">
	<!-- 				<div class="container"> -->
	<div class="container-fluid">
		<!-- 					<span>Open-source software development. -->
		<!-- 			Enterprise Solutions. Spring Boot Rocks - 2018.</span> -->
		<span class="text-muted">SPRING ENTERPRISE. Open-source
			software development 2018</span>
	</div>
</footer>
</body>
</html>