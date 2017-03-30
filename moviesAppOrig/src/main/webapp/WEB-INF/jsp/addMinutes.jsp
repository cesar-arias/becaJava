<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Main Movies</title>
<!-- Banner -->
<spring:url value="/resources/img/Beast-and-Beauty.jpg" var="bab" />
<spring:url value="/resources/img/fast-and-furious.jpg" var="faf" />
<spring:url value="/resources/img/guardians-of-the-galaxy.jpg" var="gog" />
<spring:url value="/resources/img/justice-league.jpg" var="juslea" />
<spring:url value="/resources/img/LEGO-Batman.jpg" var="lbm" />

<!-- 2017 -->
<spring:url value="/resources/img/2017/kong.jpg" var="kong" />
<spring:url value="/resources/img/2017/logan.jpg" var="logan" />
<spring:url value="/resources/img/2017/pirates.jpg" var="pirates" />
<spring:url value="/resources/img/2017/powerranger.png" var="powerranger" />
<spring:url value="/resources/img/2017/starwars.jpg" var="starwars" />
<spring:url value="/resources/img/2017/wonderwoman.jpg" var="wonderwoman" />

<!-- 2016 -->
<spring:url value="/resources/img/2016/batmanvsuperman.jpg" var="batmanvsuperman" />
<spring:url value="/resources/img/2016/captain.jpg" var="captain" />
<spring:url value="/resources/img/2016/doctorstrange.jpg" var="doctorstrange" />
<spring:url value="/resources/img/2016/findingdory.jpg" var="findingdory" />
<spring:url value="/resources/img/2016/suicidesquad.jpg" var="suicidesqua" />
<spring:url value="/resources/img/2016/zootopia.jpeg" var="zootopi" />

<!-- 2015 -->
<spring:url value="/resources/img/2015/antman.jpg" var="antman" />
<spring:url value="/resources/img/2015/avengers2.jpg" var="avengers2" />
<spring:url value="/resources/img/2015/insideout.jpg" var="insideout" />
<spring:url value="/resources/img/2015/jurasic.jpg" var="jurasic" />
<spring:url value="/resources/img/2015/revenant.jpg" var="revenant" />
<spring:url value="/resources/img/2015/terminatorgene.jpg" var="terminatorgene" />

<!-- JAVASCRIPT -->
<spring:url value="/resources/js/buymovies.js" var="filejs" />

</head>
<body>
<style>
body{
	background-color: #efefef;
}
</style>
<style>
td { font-weight: bold;text-transform: uppercase; }
</style>
<header >
<nav class="nav-extended">
    <div class="nav-wrapper">
      <a href="#" class="brand-logo"><img class="responsive-img" style="width: 90px; height: 50px; margin:10px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Blockbuster_logo.svg/245px-Blockbuster_logo.svg.png" /></a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      
      <ul class="side-nav" id="mobile-demo">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a href="#test1">movies most watched 2017</a></li>
        <li class="tab"><a href="#test2">movies most watched 2016</a></li>
        <li class="tab"><a href="#test4">movies most watched 2015</a></li>
      </ul>
    </div>
  </nav>
</header>
<div class="slider">
    <ul class="slides">
      <li>
        <img src="${bab }">
        <div class="caption right-align">
          <h3>Beast and Beauty</h3>
          <h5 class="light grey-text text-lighten-3">Only in This Page.</h5>
        </div>
      </li>
      <li>
        <img src="${faf }">
        <div class="caption right-align">
          <h3>Fast And Furious</h3>
          <h5 class="light grey-text text-lighten-3">Only in This Page.</h5>
        </div>
      </li>
      <li>
        <img src="${gog }">
        <div class="caption right-align">
          <h3>Guardians Of The Galaxy</h3>
          <h5 class="light grey-text text-lighten-3">Only in This Page.</h5>
        </div>
      </li>
      <li>
        <img src="${juslea }">
        <div class="caption right-align">
          <h3>Justice League</h3>
          <h5 class="light grey-text text-lighten-3">Only in This Page.</h5>
        </div>
      </li>
      <li>
        <img src="${lbm }">
        <div class="caption right-align">
          <h3>LEGO Batman</h3>
          <h5 class="light grey-text text-lighten-3">Only in This Page.</h5>
        </div>
      </li>
    </ul>
  </div>

<form:form commandName="exercise">
</form:form>
<div id="test1" class="col s12">
<table align="center" style="margin:100px;">
	<tbody>
		<tr>
			<td align="center">Kong: Skull Island</td>
			<td align="center">Old Logan</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${kong }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${logan }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $76</td>
			<td align="center">Price: $59</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="kong" onclick="commpra(this.id,76,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="old-logan" onclick="commpra(this.id,59,'true')">Buy</a>
			</td>
		</tr>
		
		<tr>
			<td align="center">pirates of the caribbean dead men tell no tales</td>
			<td align="center">power rangers</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${pirates }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${powerranger }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $29</td>
			<td align="center">Price: $99</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="pirates-caribbean" onclick="commpra(this.id,19,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="power-ranger" onclick="commpra(this.id,99,'true')">Buy</a>
			</td>
		</tr>
		<tr>
			<td align="center">star wars episode viii the last jedi</td>
			<td align="center">wonder woman</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${starwars }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${wonderwoman }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $113</td>
			<td align="center">Price: $22</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="star-wars" onclick="commpra(this.id,113,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="wonder-woman" onclick="commpra(this.id,22,'true')">Buy</a>
			</td>
		</tr>
	</tbody>	
</table>
</div>


<div id="test2" class="col s12">

<table align="center" style="margin:100px;">
	<tbody>
		<tr>
			<td align="center">batman v superman dawn of justice</td>
			<td align="center">captain america civil war</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${batmanvsuperman }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${captain }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $12</td>
			<td align="center">Price: $113</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="batman-v-superman" onclick="commpra(this.id,12,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="captain-america" onclick="commpra(this.id,113,'true')">Buy</a>
			</td>
		</tr>
		
		<tr>
			<td align="center">doctor strange</td>
			<td align="center">finding dory</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${doctorstrange }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${findingdory }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $39</td>
			<td align="center">Price: $89</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="doctor-strange" onclick="commpra(this.id,39,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="finding-dory" onclick="commpra(this.id,89,'true')">Buy</a>
			</td>
		</tr>
		
		<tr>
			<td align="center">suicide squad</td>
			<td align="center">zootopia</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${suicidesqua}">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${zootopi }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $110</td>
			<td align="center">Price: $69</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="suicide-squad" onclick="commpra(this.id,110,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="zootopia" onclick="commpra(this.id,69,'true')">Buy</a>
			</td>
		</tr>
		
		
	</tbody>
	
</table>

</div>
<div id="test4" class="col s12">


<table align="center" style="margin:100px;">
	<tbody>
		<tr>
			<td align="center">antman</td>
			<td align="center">avengers age of ultron</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${antman }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${avengers2 }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $76</td>
			<td align="center">Price: $59</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="antman" onclick="commpra(this.id,76,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="avengers" onclick="commpra(this.id,59,'true')">Buy</a>
			</td>
		</tr>
		
		<tr>
			<td align="center">insideout</td>
			<td align="center">jurassic world</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${insideout }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${jurasic }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $44</td>
			<td align="center">Price: $55</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="insideout" onclick="commpra(this.id,44,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="jurassic-world" onclick="commpra(this.id,55,'true')">Buy</a>
			</td>
		</tr>
		
		<tr>
			<td align="center">the revenant</td>
			<td align="center">terminator genisys</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${revenant }">
			</td>
			<td align="center">
				<img style="width: 280px; height: 320px;" src="${terminatorgene }">
			</td>
		</tr>
		<tr>
			<td align="center">Price: $1</td>
			<td align="center">Price: $32</td>
		</tr>
		<tr>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="the-revenant" onclick="commpra(this.id,1,'true')">Buy</a>
			</td>
			<td align="center">
				<a class="waves-effect waves-light btn-large" id="terminator-genisys" onclick="commpra(this.id,32,'true')">Buy</a>
			</td>
		</tr>
		
		
	</tbody>
	
</table>

</div>
	<footer class="page-footer">
          <div class="footer-copyright">
            <div id="footerdate" class="container">
            </div>
          </div>
        </footer>


<script type="text/javascript" src="${filejs}"></script>
</body>
</html>