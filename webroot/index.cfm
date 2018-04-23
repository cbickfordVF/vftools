
<script src="/assets/js/jquery-1.12.4.js"></script>
<script src="/assets/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/assets/css/jquery-ui.css">

<cfparam name="newLineVar" default="Chr(13) & Chr(10)">

<script>
  $( function() {
    $( "#datepicker" ).datepicker({dateFormat: 'MM d, yy'});
  } );

  function copyToClip(str) {
    function listener(e) {
      e.clipboardData.setData("text/html", str);
      e.clipboardData.setData("text/plain", str);
      e.preventDefault();
    }
    document.addEventListener("copy", listener);
    document.execCommand("copy");
    document.removeEventListener("copy", listener);
  };
</script>

<style>
  .titleField {
    font-weight: bold;
    text-align:right;
  }
</style>

<form action="" method="post">
  <table>
    <tr>
      <td class="titleField">Date:</td>
      <cfoutput>
        <td><input type="text" id="datepicker" size="10" value="#dateformat(now()-1, "mmmm d, yyyy")#" name="date"></td>
      </cfoutput>
    </tr>
    <tr>
      <td class="titleField">Outlet:</td>
      <td><input type="text" name="outlet" size="98"></td>
    </tr>
    <tr>
      <td class="titleField">Title:</td>
      <td><input type="text" name="title" size="98"></td>
    </tr>
    <tr>
      <td class="titleField">Weblink:</td>
      <td><input type="text" name="weblink" size="98"></td>
    </tr>
    <tr>
      <td class="titleField" valign="top">Copy:</td>
      <td><textarea name ="copy" rows="20" cols="100"></textarea></td>
    </tr>
    <tr>
      <td></td>
      <td>
        <input type="Submit" name="submit" value="Submit">
      </td>
    </tr>
  </table>
</form>

<cfparam name="form.outlet" default="">
<cfparam name="form.title" default="">
<cfparam name="form.date" default="">
<cfparam name="form.copy" default="">
<cfparam name="form.weblink" default="">
<cfparam name="form.submit" default="">

<cfif len(form.submit)>
  <div align="left" style="padding-left:70px;">
  <button onclick="copyToClip(document.getElementById('foo').innerHTML)">
    Copy the stuff
  </button>
  </div>
  <hr>
  <cfoutput>
    <div id="foo">
      <h2><span style='font-size:13.5pt;font-family:"Arial",sans-serif;font-weight:bold;'><a href="#weblink#" target="_blank">#outlet#: #title#</a></span></h2>
      <p><span style='font-size:10.0pt;font-family:"Arial",sans-serif'>#date#</span></p>
      <cfset newLineVar = Chr(13) & Chr(10)>
      <p><span style='font-size:10.0pt;font-family:"Arial",sans-serif'>#Replace(form.copy, newLineVar, "<br>", "ALL")#</span></p>
    </div>
  </cfoutput>
</cfif>
