<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<meta charset="utf-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
	<title>Department of Computer Science - Iowa State University</title>
	<link rel="icon" type="image/x-icon" href="/favicon.ico?v=1.4.67">
<link href="css/base.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.css" media="all" rel="stylesheet">
<link href="http://yandex.st/highlightjs/8.0/styles/tomorrow.min.css" media="all" rel="stylesheet">
	<style >pre{
	background-color: #f5f5f5;
	border-color: #e7e7e7;
	padding: 0;
}
pre code.hljs{
	background-color: transparent;
	border: 0;
}
fieldset pre{
	background-color: #fff;
	overflow: auto;
}
h3 code{
	font-size: 17px;
}</style>
	<script >/* html5shiv */ (function(){var t='abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video'.split(' ');for(var i=t.length;i--;)document.createElement(t[i])})();</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NLPL</title>
</head>
<body class=" responsive wd-p-Responsive wd-show-sidebar wd-p-ShowSidebar">
<div class="wd-l-Page pwrapper">
	<div class="wd-l-Page-inner pwrapper-wrapper"><div class="wd-Skip"><a accesskey="2" href="#skip-content">Skip Navigation</a></div><div class="wd-l-Header hwrapper" id="header">
	<div class="wd-l-Header-inner">
<div class="wd-l-TopStrip isu-dark-ribbon" id="top-strip">
	<div class="wd-l-TopStrip-inner">
<ul class="wd-ResponsiveToggles">
<li><button class="wd-ResponsiveToggles-nav">menu</button></li>

</ul>
<div class="wd-l-TopStripMenu">



</div>
	</div>
</div>
<div class="wd-l-Ribbon isu-red-ribbon" id="ribbon" role="banner">
	<div class="wd-l-Ribbon-inner">
<br/>
<h1>NLPL</h1>
<div class="wd-l-MastTitle-siteTitle site-title sub-title"><b>A Syntax-driven Approach for Natural Language to Programming Language Translation to Realizing Literate Programming in Java</b></div>

	</div>
</div>

	</div>
</div><div class="wd-l-Container" id="skip-content">
	<div class="wd-l-Container-inner cwrapper" id="container"><div class="wd-l-Sidebar isu-sidebar" id="sidebar">
	<div class="wd-l-Sidebar-inner">
		<ul class="wd-ResponsiveToggles">
			<li><button class="wd-ResponsiveToggles-nav">menu</button></li>
		</ul>
		<div role="navigation">
			<ul class="wd-Navigation">
<li class="wd-Navigation-node">
<a class="wd-Navigation-link" href="/NLPLWebTool/index.jsp">Introduction</a>
</li>
<li class="wd-Navigation-node">
<a class="wd-Navigation-link" href="/NLPLWebTool/approach.jsp">Approach Overview</a>
</li>
<li class="wd-Navigation-node">
<a class="wd-Navigation-link is-active" href="/NLPLWebTool/result.jsp">Result</a>
</li>

<li class="wd-Navigation-node">
<a class="wd-Navigation-link" href="/NLPLWebTool/tool.jsp">Using Tool</a>
</li>
</ul>
		</div>
		
	</div>
</div>
<div class="wd-l-Content isu-content" id="content" role="main">
	<div class="wd-l-Content-inner">
		<p>In the experiment, we conduct a comparison on data set provided by the AnyCode (Gvero and Kuncak (2015)) paper.
		This data set contains 52 code comments written in English. The java project including java source files 
		correspoding to these comments is published in the demonstration.</p>
		
		
		
		<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-7od5{background-color:#9aff99;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-7btt{font-weight:bold;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-f79y{font-weight:bold;background-color:#ffccc9;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-84w4{font-weight:bold;background-color:#9aff99;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-90e1{background-color:#ffccc9;border-color:inherit;text-align:left;vertical-align:top}
</style>

<center><h3>Table 1. Overall comparision of NLPL over AnyCode</h3>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-fymr{font-weight:bold;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-fymr">Top-K</th>
    <th class="tg-fymr">AnyCode</th>
    <th class="tg-fymr">NLPL</th>
    <th class="tg-fymr">Top-K of AnyCode</th>
    <th class="tg-fymr">Top-K of NLPL</th>
  </tr>
  <tr>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">32</td>
    <td class="tg-0pky">39</td>
    <td class="tg-0pky">61.54%</td>
    <td class="tg-0pky">75.00%</td>
  </tr>
  <tr>
    <td class="tg-0pky">2</td>
    <td class="tg-0pky">39</td>
    <td class="tg-0pky">40</td>
    <td class="tg-0pky">75.00%</td>
    <td class="tg-0pky">76.92%</td>
  </tr>
  <tr>
    <td class="tg-0pky">3</td>
    <td class="tg-0pky">41</td>
    <td class="tg-0pky">41</td>
    <td class="tg-0pky">78.85%</td>
    <td class="tg-0pky">78.85%</td>
  </tr>
  <tr>
    <td class="tg-0pky">4</td>
    <td class="tg-0pky">42</td>
    <td class="tg-0pky">42</td>
    <td class="tg-0pky">80.77%</td>
    <td class="tg-0pky">80.77%</td>
  </tr>
  <tr>
    <td class="tg-0pky">5</td>
    <td class="tg-0pky">45</td>
    <td class="tg-0pky">42</td>
    <td class="tg-0pky">86.54%</td>
    <td class="tg-0pky">80.77%</td>
  </tr>
</table>
</center>
<br/><br/>
<center><h3>Table 2. Result of NLPL over 52 code comments</h3></center>
<table class="tg">
  <tr>
    <th class="tg-f79y">No</th>
    <th class="tg-f79y">Natural Language Comment</th>
    <th class="tg-f79y">NLPL Top-1 result</th>
    <th class="tg-f79y">Top-K Acc</th>
  </tr>
  <tr>
    <td class="tg-84w4"></td>
    <td class="tg-84w4"></td>
    <td class="tg-84w4">Expected result</td>
    <td class="tg-84w4"></td>
  </tr>
  <tr>
    <td class="tg-90e1">1</td>
    <td class="tg-90e1">copy file fname to destination</td>
    <td class="tg-90e1">FileUtils .copyFile( new File( fname ) ,new File( destination ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">FileUtils .copyFile(new File(fname), new File(destination))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">2</td>
    <td class="tg-90e1">load class "MyClass.class"</td>
    <td class="tg-90e1">Thread .currentThread() .getContextClassLoader() .loadClass( "MyClass .class" )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .currentThread() .getContextClassLoader() .loadClass(”MyClass .class”)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">3</td>
    <td class="tg-90e1">make file ”text.txt”</td>
    <td class="tg-90e1">new LineNumberReader(new InputStreamReader( new File( "text .txt" ) )) .ready()</td>
    <td class="tg-90e1">4</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new File(”text .txt”) .createNewFile()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">4</td>
    <td class="tg-90e1">write "hello" to file "text.txt"</td>
    <td class="tg-90e1">FileUtils .writeStringToFile( new File( "text .txt" ) , "hello" )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">FileUtils .writeStringToFile(new File(”text .txt”), ”hello”)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">5</td>
    <td class="tg-90e1">new buffered reader ”text.txt”</td>
    <td class="tg-90e1">new BufferedReader(new InputStreamReader( "text .txt" ))</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new BufferedReader(new InputStreamReader("text .txt"))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">6</td>
    <td class="tg-90e1">open connection ”http://www.oracle.com/”</td>
    <td class="tg-90e1">new URL( "http://www .oracle .com/" ) .openConnection()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new URL(”http://www .oracle .com/”) .openConnection()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">7</td>
    <td class="tg-90e1">create socket ”http://www.oracle.com/” 80</td>
    <td class="tg-90e1">new Socket( "http://www .oracle .com/" , 80 )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Socket(”http://www .oracle .com/”, 80)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">8</td>
    <td class="tg-90e1">put a pair ”Mike” , ”+41-345-89-23” into a map</td>
    <td class="tg-90e1">new HashMap() .put( "Mike" , "+41-345-89-23" )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new HashMap() .put(”Mike”, ”+41-345-89-23”)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">9</td>
    <td class="tg-90e1">set thread max priority</td>
    <td class="tg-90e1">Thread .currentThread() .setPriority(Thread .MAX_PRIORITY )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .currentThread() .setPriority(Thread .MAX_PRIORITY);</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">10</td>
    <td class="tg-90e1">set property ”gate.home” to value ”http://gate.ac.uk/”</td>
    <td class="tg-90e1">new Properties() .setProperty( "gate .home" , "http://gate .ac .uk/" )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Properties() .setProperty(”gate .home”, ”http://gate .ac .uk/”)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">11</td>
    <td class="tg-90e1">does the file 'text.txt' exist</td>
    <td class="tg-90e1">new File( "text .txt" )  .exists()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new File("text .txt") .exists( )</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">12</td>
    <td class="tg-90e1">get thread id</td>
    <td class="tg-90e1">Thread .currentThread() .getId()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .getCurrentThread() .getId()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">13</td>
    <td class="tg-90e1">join thread</td>
    <td class="tg-90e1">Thread .currentThread() .join()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .getCurrentThread() .join()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">14</td>
    <td class="tg-90e1">delete file ”text.txt”</td>
    <td class="tg-90e1">FileDeleteStrategy .NORMAL .delete(new File( "text .txt" ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new File(”text .txt”) .delete()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">15</td>
    <td class="tg-90e1">print exception ex stack trace</td>
    <td class="tg-90e1">ex  .printStackTrace()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">ex .printStackTrace()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">16</td>
    <td class="tg-90e1">is ”text.txt” directory</td>
    <td class="tg-90e1">new File( "text .txt" ) .isDirectory()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new File(”text .txt”) .isDirectory()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">17</td>
    <td class="tg-90e1">get thread stack trace</td>
    <td class="tg-90e1">Thread .currentThread() .getStackTrace()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .currentThread() .getStackTrace()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">18</td>
    <td class="tg-90e1">read line by line file ”text.txt”</td>
    <td class="tg-90e1">new LineNumberReader(new InputStreamReader( new File( "text .txt" ) )) .readLine()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">FileUtils .readLines(new File(”text .txt”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">19</td>
    <td class="tg-90e1">set time zone to ”GMT”</td>
    <td class="tg-90e1">Calendar .getInstance() .setTimeZone(TimeZone .getTimeZone( "GMT" ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Calendar .getInstance() .setTimeZone(TimeZone .getTimeZone(”GMT”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">20</td>
    <td class="tg-90e1">free memory</td>
    <td class="tg-90e1">Runtime .getRuntime() .freeMemory()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Runtime .getRuntime() .freeMemory()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">21</td>
    <td class="tg-90e1">total memory</td>
    <td class="tg-90e1">Runtime .getRuntime() .totalMemory()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Runtime .getRuntime() .totalMemory()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">22</td>
    <td class="tg-90e1">new data input stream ”text.txt”</td>
    <td class="tg-90e1">new DataInputStream(new FileInputStream( "text .txt" ))</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new DataInputStream(new FileInputStream(”text .txt”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">23</td>
    <td class="tg-90e1">rename file ”text1.txt” to ”text2.txt”</td>
    <td class="tg-90e1">new File( "text1 .txt" )  .renameTo(new File( "text2 .txt" ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new File(”text1 .txt”) .renameTo(new File(”text2 .txt”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">24</td>
    <td class="tg-90e1">move file ”text1.txt” to ”text2.txt”</td>
    <td class="tg-90e1">FileUtils .moveFile( new File( "text1 .txt" ) ,new File( "text2 .txt" ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">FileUtils .moveFile(new File(”text1 .txt”), new File(”text2 .txt”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">25</td>
    <td class="tg-90e1">read utf from the file ”text.txt”</td>
    <td class="tg-90e1">FileUtils .readFileToString(new File( "text .txt" ) )</td>
    <td class="tg-90e1">2</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new DataInputStream(new FileInputStream(”text .txt”)) .readUTF()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">26</td>
    <td class="tg-90e1">set thread min priority</td>
    <td class="tg-90e1">Thread .currentThread() .setPriority(Thread .MIN_PRIORITY )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .currentThread() .setPriority(Thread .MIN PRIORITY)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">27</td>
    <td class="tg-90e1">create panel and set layout to border</td>
    <td class="tg-90e1">new Panel()  .setLayout(new BorderLayout() )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Panel() .setLayout(new BorderLayout())</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">28</td>
    <td class="tg-90e1">sort array</td>
    <td class="tg-90e1">Arrays .sort( array )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Arrays .sort(array)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">29</td>
    <td class="tg-90e1">add label ”Names:” to panel</td>
    <td class="tg-90e1">new Panel() .add( new Label( "Names:" ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Panel() .add(new Label(”Names:”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">30</td>
    <td class="tg-90e1">write 2015 to data output stream ”text.txt”</td>
    <td class="tg-90e1">new DataOutputStream(new FileOutputStream( "text .txt" ))  .writeInt( 2015 )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new DataOutputStream(new FileOutputStream(”text .txt”)) .write(2015)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">31</td>
    <td class="tg-90e1">get date when file ”text.txt” was last time modified</td>
    <td class="tg-90e1">new File( "text .txt" )  .lastModified()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Date(new File(”text .txt”) .lastModified()) .getTime()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">32</td>
    <td class="tg-90e1">check file ”text.txt” ”read” permission</td>
    <td class="tg-90e1">AccessController .checkPermission(new FilePermission( "text .txt" , "read" ) )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">AccessController .checkPermission(new FilePermission(”text .txt”, ”read”))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">33</td>
    <td class="tg-90e1">read lines with numbers from file ”text.txt”</td>
    <td class="tg-90e1">new LineNumberReader(new InputStreamReader( new File( "text .txt" ) )) .readLine()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new LineNumberReader(new InputStreamReader(new FileInputStream(”text .txt”))) .readLine()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">34</td>
    <td class="tg-90e1">read from console</td>
    <td class="tg-90e1">new BufferedReader(new InputStreamReader( System .in )) .read()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new BufferedReader(new InputStreamReader(System .in)) .readLine()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">35</td>
    <td class="tg-90e1">is file ”text.txt” data available</td>
    <td class="tg-90e1">new DataInputStream(new FileInputStream( new File( "text .txt" ) )) .available()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new DataInputStream(new FileInputStream(”text .txt”)) .available()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">36</td>
    <td class="tg-90e1">get double value x</td>
    <td class="tg-90e1">Integer .valueOf( x ) .doubleValue()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Double .valueOf(x) .doubleValue()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">37</td>
    <td class="tg-90e1">write object o to file output stream ”data.obj"</td>
    <td class="tg-90e1">new ObjectOutputStream(new BufferedOutputStream(new FileOutputStream( "data .obj" ))) .writeObject( o )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new ObjectOutputStream(new BufferedOutputStream(new FileOutputStream(”data .obj”))) .writeObject(o)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">38</td>
    <td class="tg-90e1">create bit set and set its 5th element to true</td>
    <td class="tg-90e1">new BitSet()  .set( 5 , true )</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new BitSet() .set(5,true)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">39</td>
    <td class="tg-90e1">accept request on port 80</td>
    <td class="tg-90e1">new ServerSocket( 80 ) .accept()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new ServerSocket(80) .accept()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">40</td>
    <td class="tg-90e1">get thread group</td>
    <td class="tg-90e1">Thread .currentThread() .getThreadGroup()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Thread .currentThread() .getThreadGroup()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">41</td>
    <td class="tg-90e1">create panel and set layout to grid</td>
    <td class="tg-90e1">new Panel()  .setLayout(new GridLayout() )</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Panel() .setLayout(new GridBagLayout())</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">42</td>
    <td class="tg-90e1">get screen size</td>
    <td class="tg-90e1">Toolkit .getDefaultToolkit() .getScreenSize()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Toolkit .getDefaultToolkit() .getScreenSize()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">43</td>
    <td class="tg-90e1">get splash screen graphics</td>
    <td class="tg-90e1">? .getSplashScreen()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">SplashScreen .getSplashScreen() .createGraphics()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">44</td>
    <td class="tg-90e1">get display refresh rate</td>
    <td class="tg-90e1">GraphicsEnvironment .getLocalGraphicsEnvironment() .getDefaultScreenDevice() .getDisplayMode() .getRefreshRate()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">GraphicsEnvironment .getLocalGraphicsEnvironment() .getDefaultScreenDevice() .getDisplayMode() .getRefreshRate()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">45</td>
    <td class="tg-90e1">get keystroke modifiers</td>
    <td class="tg-90e1">keystroke  .getModifiers()</td>
    <td class="tg-90e1">1</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">KeyEvent .getKeyModifiersText(keystroke .getModifiers())</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">46</td>
    <td class="tg-90e1">generate ”RSA” private key</td>
    <td class="tg-90e1">new Thread( "RSA" ) .yield()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">KeyPairGenerator .getInstance(”RSA”) .generateKeyPair() .getPrivate()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">47</td>
    <td class="tg-90e1">reverse list</td>
    <td class="tg-90e1">Collections .reverseOrder()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">Collections .reverse(list)</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">48</td>
    <td class="tg-90e1">intersection of rectangle 4 5 with rectangle 3 2</td>
    <td class="tg-90e1">? .intersection(? )</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Rectangle(5, 4) .intersection(new Rectangle(3, 2))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">49</td>
    <td class="tg-90e1">set cursor over label to hand</td>
    <td class="tg-90e1">new AffineTransform() .setToIdentity()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">label .setCursor(Cursor .getPredefinedCursor(Cursor .HAND CURSOR))</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">50</td>
    <td class="tg-90e1">read big integer from console</td>
    <td class="tg-90e1">new BufferedReader(new InputStreamReader( System .in )) .read()</td>
    <td class="tg-90e1">3</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new Scanner(System .in) .nextBigInteger()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">51</td>
    <td class="tg-90e1">delete file ”text.txt” when JVM terminates</td>
    <td class="tg-90e1">new File( "text .txt" )  .delete()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">new File(”text .txt”) .deleteOnExit()</td>
    <td class="tg-7od5"></td>
  </tr>
  <tr>
    <td class="tg-90e1">52</td>
    <td class="tg-90e1">get date instance for Germany</td>
    <td class="tg-90e1">DateFormat .getDateTimeInstance() .getDateInstance()</td>
    <td class="tg-90e1">&gt;10</td>
  </tr>
  <tr>
    <td class="tg-7od5"></td>
    <td class="tg-7od5"></td>
    <td class="tg-7od5">DateFormat .getDateTimeInstance(DateFormat .MEDIUM,DateFormat .MEDIUM, Locale .GERMANY)</td>
    <td class="tg-7od5"></td>
  </tr>
</table>

	</div>

</div>	

</div>
</div><div class="wd-l-Footer">
	<div class="wd-l-Footer-inner fwrapper">

<div class="wd-l-PageFooter isu-footer" id="footer" role="contentinfo">
	<div class="wd-l-PageFooter-inner">
		<div class="wd-Grid wd-Grid--fitToFill wd-Grid--noGutter">
<div class="wd-Grid-cell wd-Grid-cell--1">
	<div class="wd-l-PageFooter-nameplate">
		<a class="wd-Nameplate nameplate" href="http://www.iastate.edu/"><img alt="Iowa State University" src="/img/sprite.png?v=1.4.67"/></a>
	</div>
</div>
<div class="wd-Grid-cell wd-Grid-cell--2">
	<div class="wd-l-PageFooter-content">
		<p> (515) 735-6030, <script>document.write('<a href="mailto:'+ ["hungphd", "iastate.edu"].join('@') +'">'+ ["hungphd", "iastate.edu"].join('@') +'</a>')</script><noscript>hungphd (at) iastate (dot) edu</noscript>.</p>
		<p>Copyright &copy; 1995-2016, Iowa State University of Science and Technology. All rights reserved.</p>
	</div>
</div>
		</div>
	</div>
</div>

	</div>
</div><div id="loading" style="display:none">Loading...</div>	</div>
</div><script >/* Grid gutter fix for IE7 */ (function(b){if((' '+b.body.parentNode.className+' ').indexOf(' lt-ie8 ')==-1)return;var d=b.createStyleSheet();var e=function(s){var a=b.all,l=[],i,j;d.addRule(s,'k:v');for(j=a.length;j--;)a[j].currentStyle.k&&l.push(a[j]);d.removeRule(0);return l};var g=e('.grid');for(var i=g.length;i--;)g[i].style.width=g[i].offsetWidth-20})(document);</script>
<script >/* Responsive design */ (function(f){if(!f.querySelector||!f.addEventListener)return;var g='add',cc='contains',cr='remove',ct='toggle',sa='active',sb='wd-p-OffCanvasBar',sn='wd-p-OffCanvasNav',ss='wd-p-OffCanvasSearch',ip='.wd-l-SearchBox input[type="text"]',ed='preventDefault',q=function(a,b){return(b||f).querySelectorAll(a)},c=function(a,b,c){b=b||cr;c=c||f.body;a=' '+a+' ';var d=' '+c.className.trim()+' ';var e=d.indexOf(a)!=-1;if(b==cc)return e;else if(!e&&(b==ct||b==g))c.className=d+a;else if(e&&(b==ct||b==cr))c.className=d.replace(a,' ')},h=function(b,c,d){for(var e=q(b),i=e.length;i--;){if(e[i].tagName!='A'){if(!d)e[i].addEventListener('click',function(a){a[ed]()},0);e[i].addEventListener('ontouchstart'in window?'touchstart':'mousedown',c,0)}}},m=q('.wd-l-TopStripMenu-toolbar'),md=function(){q(ip)[0]&&q(ip)[0].blur();for(var i=m.length;i--;)c(sa,cr,m[i])};h('.wd-ResponsiveToggles-nav',function(a){md();c(sb);c(ss);c(sn,ct);a[ed]()});h('.wd-ResponsiveToggles-search',function(a){md();c(sb);c(ss,ct);if(c(ss,cc))q(ip)[0]&&q(ip)[0].focus();c(sn);a[ed]()});h('.wd-l-TopStripMenu-header',function(a){var b=q('.wd-l-TopStripMenu-toolbar',this.parentNode)[0];if(c(sa,cc,b)){c(sa,cr,b);c(sb)}else{md();c(sa,g,b);c(sb,g);c(ss)}a[ed]()});h('.wd-l-Content',function(a){if(c(sn,cc))a[ed]();c(sn)},true)})(document);</script>
<script >hljs.configure({tabReplace: '    '}); hljs.initHighlightingOnLoad()</script>
<script >$(document).ready(function()
{
	$('.wd-Tab-navs,.tab-navs').each(function()
	{
		var tabs = $(this).find('li a');
		var panes = $(this).next('.wd-Tab-panes,.tab-panes').find('.wd-Tab-pane,.tab-pane');
		tabs.each(function(i)
		{
			var tab = $(this);
			tab.click(function()
			{
				tabs.removeClass('active');
				tab.addClass('active');

				panes.removeClass('active');
				panes.eq(i).addClass('active');

				return false;
			});
		});
		if (tabs.filter('.active').length == 0)
		{
			tabs.first().click();
		}
		else if (panes.filter('.active').length == 0)
		{
			panes.eq(tabs.index(tabs.filter('.active'))).addClass('active');
		}
	});
});</script>
<script src="http://yandex.st/highlightjs/8.0/highlight.min.js"></script>
<script src="/js/jquery-1.5.2.min.js"></script></body></html>