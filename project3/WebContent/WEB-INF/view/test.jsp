<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
    <link href="styles/glDatePicker.default.css" rel="stylesheet" type="text/css">
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <!-- <script src="/resources/js/glDatePicker.min.js"></script>-->
     <!--  <link rel="stylesheet" href="/resources/css/glDatePicker.default.css">-->
      
      <style>
      .gldp-default {
	position: absolute;
	font-family: 'helvetica';
}

/* Core style for every cell */
.gldp-default .core {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	position: relative;
	float: left;
	padding: 0;
	margin: 0;
	font-size: 14px;
	text-align: center;
	cursor: pointer;
	color: #222;
	background: #ffffff;
	background: -moz-linear-gradient(top,  #ffffff 0%, #dadada 98%, #ffffff 99%, #dadada 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(98%,#dadada), color-stop(99%,#ffffff), color-stop(100%,#dadada));
	background: -webkit-linear-gradient(top,  #ffffff 0%,#dadada 98%,#ffffff 99%,#dadada 100%);
	background: -o-linear-gradient(top,  #ffffff 0%,#dadada 98%,#ffffff 99%,#dadada 100%);
	background: -ms-linear-gradient(top,  #ffffff 0%,#dadada 98%,#ffffff 99%,#dadada 100%);
	background: linear-gradient(to bottom,  #ffffff 0%,#dadada 98%,#ffffff 99%,#dadada 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#dadada',GradientType=0 );
}

/* Cell border */
.gldp-default .border {
	border-style: solid;
	border-width: 0;
	border-color: #888;
}

/* Month/Year text and select */
.gldp-default .monyear,
.gldp-default .monyear select {
	font-size: 16px !important;
	font-weight: bold;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.75);
}

/* Month/Year text */
.gldp-default .monyear span {
	margin: 0 5px 0 5px;
}

/* Prev/Next arrows */
.gldp-default .prev-arrow,
.gldp-default .next-arrow {
	color: #222;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.75);
}

.gldp-default .prev-arrow:active,
.gldp-default .next-arrow:active {
	color: #f00;
}

.gldp-default .prev-arrow-off,
.gldp-default .next-arrow-off {
	color: #222;
	opacity: 0.15;
}

/* Days of the week */
.gldp-default .dow {
	color: #fff;
	font-weight: bold;
	cursor: wait !important;
	background: #0000ff;
	background: -moz-linear-gradient(top,  #0000ff 0%, #ffcccc 1%, #0000ff 2%, #aa0000 98%, #dd4444 99%, #880000 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#0000ff), color-stop(1%,#dd4444), color-stop(2%,#0000ff), color-stop(98%,#aa0000), color-stop(99%,#ffcccc), color-stop(100%,#880000));
	background: -webkit-linear-gradient(top,  #0000ff 0%,#ffcccc 1%,#0000ff 2%,#aa0000 98%,#dd4444 99%,#880000 100%);
	background: -o-linear-gradient(top,  #0000ff 0%,#ffcccc 1%,#0000ff 2%,#aa0000 98%,#dd4444 99%,#880000 100%);
	background: -ms-linear-gradient(top,  #0000ff 0%,#ffcccc 1%,#0000ff 2%,#aa0000 98%,#dd4444 99%,#880000 100%);
	background: linear-gradient(to bottom,  #0000ff 0%,#ffcccc 1%,#0000ff 2%,#aa0000 98%,#dd4444 99%,#880000 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0000ff', endColorstr='#880000',GradientType=0 );
}

/* Weekdays */
.gldp-default .mon,
.gldp-default .tue,
.gldp-default .wed,
.gldp-default .thu,
.gldp-default .fri {
	font-weight: bold;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.75);
}

/* Weekend days */
.gldp-default .sat,
.gldp-default .sun {
	color: #1858a8;
	font-weight: bold;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.75);
}

/* Selectable days that are outside of current month being shown */
.gldp-default .outday {
	color: #666 !important;
}

/* Hover */
.gldp-default .mon:hover,
.gldp-default .tue:hover,
.gldp-default .wed:hover,
.gldp-default .thu:hover,
.gldp-default .fri:hover,
.gldp-default .sat:hover,
.gldp-default .sun:hover {
	background: #fcfff4;
	background: -moz-linear-gradient(top,  #fcfff4 0%, #e9e9ce 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fcfff4), color-stop(100%,#e9e9ce));
	background: -webkit-linear-gradient(top,  #fcfff4 0%,#e9e9ce 100%);
	background: -o-linear-gradient(top,  #fcfff4 0%,#e9e9ce 100%);
	background: -ms-linear-gradient(top,  #fcfff4 0%,#e9e9ce 100%);
	background: linear-gradient(to bottom,  #fcfff4 0%,#e9e9ce 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fcfff4', endColorstr='#e9e9ce',GradientType=0 );
}

/* Non-Selectable days */
.gldp-default .noday {
	color: #444;
	font-weight: normal;
	cursor: wait !important;
	background: #aaaaaa;
	background: -moz-linear-gradient(top,  #aaaaaa 0%, #8a8a8a 98%, #aaaaaa 99%, #8a8a8a 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#aaaaaa), color-stop(98%,#8a8a8a), color-stop(99%,#aaaaaa), color-stop(100%,#8a8a8a)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #aaaaaa 0%,#8a8a8a 98%,#aaaaaa 99%,#8a8a8a 100%);
	background: -o-linear-gradient(top,  #aaaaaa 0%,#8a8a8a 98%,#aaaaaa 99%,#8a8a8a 100%);
	background: -ms-linear-gradient(top,  #aaaaaa 0%,#8a8a8a 98%,#aaaaaa 99%,#8a8a8a 100%);
	background: linear-gradient(to bottom,  #aaaaaa 0%,#8a8a8a 98%,#aaaaaa 99%,#8a8a8a 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#aaaaaa', endColorstr='#8a8a8a',GradientType=0 );
}

/* Currently selected day */
.gldp-default .selected {
	color: #fff;
	font-weight: bold;
	border-color: #c00;
	background: #e8bf88;
	background: -moz-linear-gradient(top,  #e8bf88 0%, #ffc19d 1%, #fd8642 2%, #ab2412 98%, #ef753f 99%, #ef753f 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e8bf88), color-stop(1%,#ffc19d), color-stop(2%,#fd8642), color-stop(98%,#ab2412), color-stop(99%,#ef753f), color-stop(100%,#ef753f));
	background: -webkit-linear-gradient(top,  #e8bf88 0%,#ffc19d 1%,#fd8642 2%,#ab2412 98%,#ef753f 99%,#ef753f 100%);
	background: -o-linear-gradient(top,  #e8bf88 0%,#ffc19d 1%,#fd8642 2%,#ab2412 98%,#ef753f 99%,#ef753f 100%);
	background: -ms-linear-gradient(top,  #e8bf88 0%,#ffc19d 1%,#fd8642 2%,#ab2412 98%,#ef753f 99%,#ef753f 100%);
	background: linear-gradient(to bottom,  #e8bf88 0%,#ffc19d 1%,#fd8642 2%,#ab2412 98%,#ef753f 99%,#ef753f 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e8bf88', endColorstr='#ef753f',GradientType=0 );
}

/* Today */
.gldp-default .today {
	color: #fff;
	font-weight: bold;
	border-color: #00c;
	background: #88bfe8;
	background: -moz-linear-gradient(top,  #88bfe8 0%, #9dc1ff 1%, #4286fd 2%, #0124ab 98%, #3775ef 99%, #3775ef 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#88bfe8), color-stop(1%,#9dc1ff), color-stop(2%,#4286fd), color-stop(98%,#0124ab), color-stop(99%,#3775ef), color-stop(100%,#3775ef));
	background: -webkit-linear-gradient(top,  #88bfe8 0%,#9dc1ff 1%,#4286fd 2%,#0124ab 98%,#3775ef 99%,#3775ef 100%);
	background: -o-linear-gradient(top,  #88bfe8 0%,#9dc1ff 1%,#4286fd 2%,#0124ab 98%,#3775ef 99%,#3775ef 100%);
	background: -ms-linear-gradient(top,  #88bfe8 0%,#9dc1ff 1%,#4286fd 2%,#0124ab 98%,#3775ef 99%,#3775ef 100%);
	background: linear-gradient(to bottom,  #88bfe8 0%,#9dc1ff 1%,#4286fd 2%,#0124ab 98%,#3775ef 99%,#3775ef 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#88bfe8', endColorstr='#3775ef',GradientType=0 );
}

/* Special */
.gldp-default .special {
	color: #fff;
	font-weight: bold;
	border-color: #0c0;
	background: #88e888;
	background: -moz-linear-gradient(top,  #88e888 0%, #9dff9d 1%, #42fd42 2%, #01ab01 98%, #37ef37 99%, #37ef37 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#88e888), color-stop(1%,#9dff9d), color-stop(2%,#42fd42), color-stop(98%,#01ab01), color-stop(99%,#37ef37), color-stop(100%,#37ef37));
	background: -webkit-linear-gradient(top,  #88e888 0%,#9dff9d 1%,#42fd42 2%,#01ab01 98%,#37ef37 99%,#37ef37 100%);
	background: -o-linear-gradient(top,  #88e888 0%,#9dff9d 1%,#42fd42 2%,#01ab01 98%,#37ef37 99%,#37ef37 100%);
	background: -ms-linear-gradient(top,  #88e888 0%,#9dff9d 1%,#42fd42 2%,#01ab01 98%,#37ef37 99%,#37ef37 100%);
	background: linear-gradient(to bottom,  #88e888 0%,#9dff9d 1%,#42fd42 2%,#01ab01 98%,#37ef37 99%,#37ef37 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#88e888', endColorstr='#37ef37',GradientType=0 );
}
      
      </style>
      
 <script>
 /*! glDatePicker v2.0  | Tue Jan 1 2013 | http://glad.github.com/glDatePicker/ */;
 (function(){$.fn.glDatePicker=function(a){var G=this.data("glDatePicker");return!G?this.each(function(){return $(this).data("glDatePicker",new O(this,a))}):!0===a?G:this};$.fn.glDatePicker.defaults={cssName:"default",zIndex:1E3,borderSize:1,calendarOffset:{x:0,y:1},showAlways:!1,hideOnClick:!0,allowMonthSelect:!0,allowYearSelect:!0,todayDate:new Date,selectedDate:null,prevArrow:"\u25c4",nextArrow:"\u25ba",selectableDates:null,selectableDateRange:null,specialDates:null,selectableMonths:null,selectableYears:null,
 selectableDOW:null,monthNames:null,dowNames:null,dowOffset:0,onClick:function(a,G,g){a.val(g.toLocaleDateString())},onHover:function(){},onShow:function(a){a.show()},onHide:function(a){a.hide()},firstDate:null};var O=function(){function a(a,g){var d=this;d.el=$(a);var b=d.el;d.options=$.extend(!0,{},$.fn.glDatePicker.defaults,g);var c=d.options;d.calendar=$($.find("[gldp-el="+b.attr("gldp-id")+" ]"));c.selectedDate=c.selectedDate||c.todayDate;c.firstDate=(new Date(c.firstDate||c.selectedDate))._first();
 (b.attr("gldp-id")||"").length||b.attr("gldp-id","gldp-"+Math.round(1E10*Math.random()));b.addClass("gldp-el").bind("click",function(b){d.show(b)}).bind("focus",function(b){d.show(b)});d.calendar.length&&!c.showAlways&&d.calendar.hide();$(document).bind("mouseup",function(a){var a=a.target,c=d.calendar;!b.is(a)&&(!c.is(a)&&0===c.has(a).length&&c.is(":visible"))&&d.hide()});d.render()}a.prototype={show:function(){$.each($(".gldp-el").not(this.el),function(a,g){if(g.length)g.options.onHide(g.calendar)});
 this.options.onShow(this.calendar)},hide:function(){if(this.options&&!this.options.showAlways)this.options.onHide(this.calendar)},render:function(a){var g=this,d=g.el,b=g.options,c=g.calendar,j="gldp-"+b.cssName,t=b.todayDate._val(),u=t.time,h=b.borderSize+"px",y=function(b,m,a){for(var c=[],e=b;e<=m;e++)c.push(e);if(a){var d=[];$.each(a,function(a,c){c>=b&&(c<=m&&0>d._indexOf(c))&&d.push(c)});c=d.length?d:c}c.sort();return c},H=y(0,11,b.selectableMonths),v=y(t.year-5,t.year+5,b.selectableYears),
 y=y(0,6,b.selectableDOW),z=b.dowNames||"Sun Mon Tue Wed Thu Fri Sat".split(" "),t=b.monthNames||"January February March April May June July August September October November December".split(" "),f=d.outerWidth(),e,k=f/7+6*(b.borderSize/7),f=f/8+7*(b.borderSize/8);c.length?eval(c.data("is"))||(f=c.outerWidth(),e=c.outerHeight(),k=f/7+6*(b.borderSize/7),f=e/8+7*(b.borderSize/8)):(g.calendar=c=$("<div/>").attr("gldp-el",d.attr("gldp-id")).data("is",!0).css({display:b.showAlways?void 0:"none",zIndex:b.zIndex,
 width:7*k+"px"}),$("body").append(c));d.is(":visible")||c.hide();c.removeClass().addClass(j).children().remove();j=function(){var i=d.offset();c.css({top:i.top+d.outerHeight()+b.calendarOffset.y+"px",left:i.left+b.calendarOffset.x+"px"})};$(window).resize(j);j();var j={width:k+"px",height:f+"px",lineHeight:f+"px"},f=function(i){for(var m=new Date(b.firstDate),i=i||0;;){m.setMonth(m.getMonth()+i);m.setDate(Math.min(1,m._max()));if(0==i)break;var c=m._val(),a=c.year;if(-1!=H._indexOf(c.month))if(-1!=
 v._indexOf(a))break;else if(a<v[0]||a>v[v.length-1])return null}return m},A=f(-1),B=f(1),f=b.firstDate=f();e=f._val();var I=e.month,J=e.year,f=new Date(f);e=Math.abs(Math.min(6,Math.max(0,b.dowOffset)));var l=f.getDay()-e,l=1>l?-7-l:-l,z=z.concat(z).slice(e,e+7);f._add(l);e=$("<div/>").addClass(" core border monyear ").css($.extend({},j,{borderWidth:h+" 0 0 "+h})).append($("<a/>").addClass("prev-arrow"+(A?"":"-off")).html(b.prevArrow)).mousedown(function(){return!1}).click(function(i){""!=b.prevArrow&&
 A&&(i.stopPropagation(),A&&(b.firstDate=A,g.render()))});k=5*k-5*b.borderSize+b.borderSize;k=$("<div/>").addClass(" core border monyear title").css($.extend({},j,{width:k+"px",borderTopWidth:h,marginLeft:"-"+h}));l=$("<div/>").addClass(" core border monyear ").css($.extend({},j,{marginLeft:"-"+h,borderWidth:h+" "+h+" 0 0"})).append($("<a/>").addClass("next-arrow"+(B?"":"-off")).html(b.nextArrow)).mousedown(function(){return!1}).click(function(i){""!=b.nextArrow&&B&&(i.stopPropagation(),B&&(b.firstDate=
 B,g.render()))});c.append(e).append(k).append(l);for(l=e=0;7>e;e++)for(var q=0;7>q;q++,l++){var C=new Date(f),n="day",r=b.zIndex+l,w=$("<div/>");if(e){C._add(q+7*(e-1));var p=C._val(),x=p.time,K=null,s=!0,D=function(b,a){!0===b.repeatYear&&a.setYear(p.year);!0===b.repeatMonth&&a.setMonth(p.month);return a._val()};w.html(p.date);b.selectableDateRange&&(s=!1,$.each(b.selectableDateRange,function(b,a){var c=a.from,d=a.to||null,d=d||new Date(a.from.getFullYear(),a.from.getMonth(),a.from._max()),c=D(a,
 c),d=D(a,d);if(x>=c.time&&x<=d.time)return s=!0}));if(b.selectableDates){if(b.selectableDateRange&&!s||s&&!b.selectableDateRange)s=!1;$.each(b.selectableDates,function(b,a){if(D(a,a.date).time==x)return s=!0})}!s||0>v._indexOf(p.year)||0>H._indexOf(p.month)||0>y._indexOf(p.day)?n="noday":(n="sun mon tue wed thu fri sat".split(" ")[p.day],I!=p.month&&(n+=" outday"),u==x&&(n="today",r+=50),b.selectedDate._time()==x&&(n="selected",r+=51),b.specialDates&&$.each(b.specialDates,function(b,a){D(a,a.date).time==
 x&&(n=a.cssClass||"special",r+=52,K=a.data)}),w.mousedown(function(){return!1}).hover(function(a){a.stopPropagation();a=$(this).data("data");b.onHover(d,w,a.date,a.data)}).click(function(a){a.stopPropagation();a=$(this).data("data");b.selectedDate=b.firstDate=a.date;g.render(function(){!b.showAlways&&b.hideOnClick&&g.hide()});b.onClick(d,$(this),a.date,a.data)}))}else n="dow",w.html(z[q]),C=null;$.extend(j,{borderTopWidth:h,borderBottomWidth:h,borderLeftWidth:0<e||!e&&!q?h:0,borderRightWidth:0<e||
 !e&&6==q?h:0,marginLeft:0<q?"-"+h:0,marginTop:0<e?"-"+h:0,zIndex:r});w.data("data",{date:C,data:K}).addClass(" core border "+n).css(j);c.append(w)}var N=function(a){b.allowMonthSelect&&(L.css({display:!a?"none":"inline-block"}),E.css({display:!a?"inline-block":"none"}));b.allowYearSelect&&(M.css({display:a?"none":"inline-block"}),F.css({display:a?"inline-block":"none"}))},u=function(){b.firstDate=new Date(F.val(),E.val(),1);g.render()},E=$("<select/>").hide().change(u),F=$("<select/>").hide().change(u),
 L=$("<span/>").html(t[I]).mousedown(function(){return!1}).click(function(a){a.stopPropagation();N(!1)}),M=$("<span/>").html(J).mousedown(function(){return!1}).click(function(a){a.stopPropagation();N(!0)});$.each(t,function(a,c){if(b.allowMonthSelect&&-1!=H._indexOf(a)){var d=$("<option/>").html(c).attr("value",a);a==I&&d.attr("selected","selected");E.append(d)}});$.each(v,function(a,c){if(b.allowYearSelect){var d=$("<option/>").html(c).attr("value",c);c==J&&d.attr("selected","selected");F.append(d)}});
 u=$("<div/>").append(L).append(E).append(M).append(F);k.children().remove();k.append(u);(a||function(){})()}};return a}();Date.prototype._clear=function(){this.setHours(0);this.setMinutes(0);this.setSeconds(0);this.setMilliseconds(0);return this};Date.prototype._time=function(){return this._clear().getTime()};Date.prototype._max=function(){return[31,28+(1==(new Date(this.getYear(),1,29)).getMonth()?1:0),31,30,31,30,31,31,30,31,30,31][this.getMonth()]};Date.prototype._add=function(a){this.setDate(this.getDate()+
 a)};Date.prototype._first=function(){var a=new Date(this);a.setDate(1);return a};Date.prototype._val=function(){this._clear();return{year:this.getFullYear(),month:this.getMonth(),date:this.getDate(),time:this.getTime(),day:this.getDay()}};Array.prototype._indexOf=function(a){return $.inArray(a,this)}})();
</script>

    <script type="text/javascript">
        $(window).load(function()
        {
            $('mydate').glDatePicker();
        });
        
    </script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</head>
<body>

<form:form action = "/project3/appointment/redirecttoslotselector"  method="POST" modelAttribute="appointment" >  
 

    
 <div gldp-el="mydate"
         style="width:400px; height:300px; position:absolute; top:70px; left:100px;">
    </div>
    
    <form:input type="text" id="mydate" gldp-id="mydate" path="date_selected" />
    <br>

    <input type="submit" value="Submit" />
   
</form:form>

</body>
</html>
