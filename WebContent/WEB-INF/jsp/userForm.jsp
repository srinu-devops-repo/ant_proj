<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>

<form:form method="POST" commandName="user">
	<table>
		<tr>
			<td>Student Name :</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Student Password :</td>
			<td><form:password path="password" /></td>
		</tr>
		<tr>
			<td>Gender :</td>
			<td><form:radiobutton path="gender" value="M" label="M" /> 
				<form:radiobutton path="gender" value="F" label="F" /></td>
		</tr>
		<tr>
			<td>Country :</td>
			<td><form:select path="country">
				<form:option value="0" label="Select" />
				<form:option value="1" label="HYD" />
				<form:option value="2" label="BLR" />
				<form:option value="3" label="CHN" />
				<form:option value="4" label="DLH" />
			</form:select></td>
		</tr>
		<tr>
			<td>About you :</td>
			<td><form:textarea path="aboutYou" /></td>
		</tr>
		<tr>
			<td>Community :</td>
			<td><form:checkbox path="community" value="Spring"
				label="Spring" /> <form:checkbox path="community" value="Hibernate"
				label="Hibernate" /> <form:checkbox path="community" value="Struts"
				label="Struts" /></td>
		</tr>
		<tr>
			<td></td>
			<td><form:checkbox path="mailingList"
				label="Would you like to join our mailinglist?" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"></td>
		</tr>
	</table>
</form:form>
 <table border = "5" bgcolor="pink" align="center">
         <tr>
            <th>Column 1</th>
            <th>Column 2</th>
            <th>Column 3</th>
         </tr>
         <tr>
            <td rowspan = "2">Row 1 Cell 1</td>
            <td>Row 1 Cell 2</td>
            <td>Row 1 Cell 3</td>
         </tr>
         <tr>
            <td>Row 2 Cell 2</td>
            <td>Row 2 Cell 3</td>
         </tr>
         <tr>
            <td colspan = "3">Row 3 Cell 1</td>
         </tr>
      </table>
<center>
<script language="javascript" type="text/javascript">
var day_of_week = new Array('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
var month_of_year = new Array('January','February','March','April','May','June','July','August','September','October','November','December');

//  DECLARE AND INITIALIZE VARIABLES
var Calendar = new Date();

var year = Calendar.getFullYear();     // Returns year
var month = Calendar.getMonth();    // Returns month (0-11)
var today = Calendar.getDate();    // Returns day (1-31)
var weekday = Calendar.getDay();    // Returns day (1-31)

var DAYS_OF_WEEK = 7;    // "constant" for number of days in a week
var DAYS_OF_MONTH = 31;    // "constant" for number of days in a month
var cal;    // Used for printing

Calendar.setDate(1);    // Start the calendar day at '1'
Calendar.setMonth(month);    // Start the calendar month at now


/* VARIABLES FOR FORMATTING
NOTE: You can format the 'BORDER', 'BGCOLOR', 'CELLPADDING', 'BORDERCOLOR'
      tags to customize your caledanr's look. */

var TR_start = '<TR>';
var TR_end = '</TR>';
var highlight_start = '<TD WIDTH="30"><TABLE CELLSPACING=0 BORDER=1 BGCOLOR=DEDEFF BORDERCOLOR=CCCCCC><TR><TD WIDTH=20><B><CENTER>';
var highlight_end   = '</CENTER></TD></TR></TABLE></B>';
var TD_start = '<TD WIDTH="30"><CENTER>';
var TD_end = '</CENTER></TD>';

/* BEGIN CODE FOR CALENDAR
NOTE: You can format the 'BORDER', 'BGCOLOR', 'CELLPADDING', 'BORDERCOLOR'
tags to customize your calendar's look.*/

cal =  '<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=0 BORDERCOLOR=BBBBBB><TR><TD>';
cal += '<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=2>' + TR_start;
cal += '<TD COLSPAN="' + DAYS_OF_WEEK + '" BGCOLOR="#EFEFEF"><CENTER><B>';
cal += month_of_year[month]  + '   ' + year + '</B>' + TD_end + TR_end;
cal += TR_start;

//   DO NOT EDIT BELOW THIS POINT  //

// LOOPS FOR EACH DAY OF WEEK
for(index=0; index < DAYS_OF_WEEK; index++)
{

// BOLD TODAY'S DAY OF WEEK
if(weekday == index)
cal += TD_start + '<B>' + day_of_week[index] + '</B>' + TD_end;

// PRINTS DAY
else
cal += TD_start + day_of_week[index] + TD_end;
}

cal += TD_end + TR_end;
cal += TR_start;

// FILL IN BLANK GAPS UNTIL TODAY'S DAY
for(index=0; index < Calendar.getDay(); index++)
cal += TD_start + '  ' + TD_end;

// LOOPS FOR EACH DAY IN CALENDAR
for(index=0; index < DAYS_OF_MONTH; index++)
{
if( Calendar.getDate() > index )
{
  // RETURNS THE NEXT DAY TO PRINT
  week_day =Calendar.getDay();

  // START NEW ROW FOR FIRST DAY OF WEEK
  if(week_day == 0)
  cal += TR_start;

  if(week_day != DAYS_OF_WEEK)
  {

  // SET VARIABLE INSIDE LOOP FOR INCREMENTING PURPOSES
  var day  = Calendar.getDate();

  // HIGHLIGHT TODAY'S DATE
  if( today==Calendar.getDate() )
  cal += highlight_start + day + highlight_end + TD_end;

  // PRINTS DAY
  else
  cal += TD_start + day + TD_end;
  }

  // END ROW FOR LAST DAY OF WEEK
  if(week_day == DAYS_OF_WEEK)
  cal += TR_end;
  }

  // INCREMENTS UNTIL END OF THE MONTH
  Calendar.setDate(Calendar.getDate()+1);

}// end for loop

cal += '</TD></TR></TABLE></TABLE>';

//  PRINT CALENDAR
document.write(cal);

//  End -->
</script>
</center>
<br/><div style="clear:both"></div><div><a target="_blank" href="http://www.htmlbestcodes.com/"><span style="font-size: 8pt; text-decoration: none">HTML Best Codes</span></a></div>
</body>
</html>
