<!DOCTYPE html>
<html lang="en-US">
<%int a=4; 
%>
<%@page import="java.sql.*,java.util.*"%>
		<%
			String l_id = session.getAttribute("username").toString();
			
			String query="select * from expenses where username = '";
			query=query+l_id;
			String k="'";
			query=query+k;
			String name=null;
			long travel=0;
			long medical=0;
			long food=0;
			long loan=0;
			long shopping=0;
			long education=0;
			long others=0;
			String gender=null;
				try{
					System.err.println(query);
		    	  session.setAttribute("username",l_id);
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
				PreparedStatement st = con.prepareStatement(query);
				 int l=0;
				ResultSet i = st.executeQuery();
				if(i.next()){
				food=i.getLong("food");
				travel=i.getLong("travel");
				medical=i.getLong("medical");
				loan=i.getLong("loan");
				shopping=i.getLong("shopping");
				education=i.getLong("education");
				others=i.getLong("otherss");
				l=l+1;
				}
			} catch (Exception e2) {
				System.out.println(e2);
			}
		%>
<body>



<div id="piechart"><center></center></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['catogery', 'expenses'],
  ['food', <%=a%>],
  ['travel', <%=travel%>],
  ['education',  <%=education%>],
  ['medical',  <%=medical%>],
  ['loan',  <%=loan%>],
  ['shopping',  <%=shopping%>],
  ['others',  <%=others%>]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'My expenses', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
  var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
  chart.draw(data, options);
}
</script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <div id="chart_div"></div>
<script type="text/javascript">

google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawMultSeries);

function drawMultSeries() {
	  var data = google.visualization.arrayToDataTable([
		  ['catogery', 'expenses'],
		  ['food', <%=a%>],
		  ['travel', <%=travel%>],
		  ['education',  <%=education%>],
		  ['medical',  <%=medical%>],
		  ['loan',  <%=loan%>],
		  ['shopping',  <%=shopping%>],
		  ['others',  <%=others%>]
		]);

      var options = {
        title: 'my expenses',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'expenses catogery wise',
          minValue: 0
        },
        vAxis: {
          title: 'City'
        }
      };

      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
</script>

</body>
</html>
