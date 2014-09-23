<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<meta name="google-site-verification" content="xxxxxxxxx" />
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/themes/smoothness/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>

<link href="${cssURL}" rel="stylesheet" type="text/css" />
<link rel="icon" href="<c:url value="/static/images/favicon.ico"/>"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="<c:url value="/static/images/favicon.ico"/>" type="image/x-icon" />
<meta charset="utf-8">

<script>
$(document).ready(function(){
  var placeholder = null;
  $('input[type=text]').focus(function(){
    placeholder = $(this).attr("placeholder");
    $(this).attr("placeholder","");
  });
  $('input[type=text]').blur(function(){
    $(this).attr("placeholder", placeholder);
  });
});
</script>
	
<style>
  $back-color: #F0F0F0;
  $green-border: #72B372;

@mixin linear-gradient($top, $bottom) {
  background: $top;
  background: -webkit-linear-gradient($top, $bottom);
  background: -moz-linear-gradient($top, $bottom);
  background: -o-linear-gradient($top, $bottom);
  background: linear-gradient($top, $bottom);
}

.content > div {
  display: inline-block;
  width: 49%;
  margin-top: 10px;
}

.register {
    border: none; 
        
    h3 {
      border-bottom-color: #909090;
    }

    .sep{
      border-color: #909090;
    }
    
    width: 500px;
    margin: 10px auto;
    padding: 10px;
    border: 7px solid $green-border;
    border-radius: 10px;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      color: #444;
    background-color: $back-color;
    box-shadow: 0 0 20px 0 #000000;
    
  h3 {
        margin: 0 15px 20px;
        border-bottom: 2px solid $green-border;
        padding: 5px 10px 5px 0;
        font-size: 1.1em;
    }

    div{
        margin: 0 0 15px 0;
        border : none;
    }

    label {
        display: inline-block;
        width: 25%;
        text-align: right;
        margin: 10px
    }

    input[type=text], input[type=password]{
        width: 65%; 
        font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
        padding: 5px;
        font-size: 0.9em;
        border-radius: 5px;
        background: rgba(0, 0, 0, 0.07);
    }
  
  input[type=text]:focus, input[type=password]:focus{
        background: #FFFFFF;
    }

    .button {
        font-size: 1em;
        border-radius: 8px;
        padding: 10px;
        border: 1px solid #59B969;
        box-shadow: 0 1px 0 0 #60BD49 inset;
        @include linear-gradient(#63E651, #42753E);
        
        &:hover {
            @include linear-gradient(#51DB1C, #6BA061);
        }
    }
    
    .sep {
        border: 1px solid $green-border;
        position: relative;
        margin: 35px 20px;
    }

    .or {
        position: absolute;
        width: 50px;
        left: 50%;
        background: $back-color;
        text-align: center;
        margin: -10px 0 0 -25px;
        line-height: 20px;
    }
}
</style>	
