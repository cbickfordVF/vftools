<cfinclude template="../includes/inc_header.cfm">

  <script src="/assets/js/jquery-1.12.4.js"></script>

  <script>
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


<cfparam name="form.title" default="">
<cfparam name="form.link" default="">
<cfparam name="form.SubtitleA" default="">
<cfparam name="form.SubtitleB" default="">
<cfparam name="form.copy" default="">
<cfparam name="form.submit" default="">

<cfoutput>
<div class="container">
  <div class="left" style="float:left;margin-right:40px;">
    <form action="" method="post">
      <table>
        <tr>
          <td align="right">Title:</td>
          <td><input type="text" name="Title" size="78"></td>
        </tr>
        <tr>
          <td align="right">Link:</td>
          <td><input type="text" name="Link" size="78"></td>
        </tr>
        <tr>
          <td align="right">Date, Location:</td>
          <td><input type="text" name="SubtitleA" size="78"></td>
        </tr>
        <tr>
          <td align="right">Deadline:</td>
          <td><input type="text" name="SubtitleB" size="78"></td>
        </tr>
        <tr>
          <td align="right">Copy:</td>
          <td>
            <textarea name="copy" rows="10" cols="80"></textarea>
          </td>
        </tr>
        <tr>
          <td></td>
          <td>
              <input type="submit" name="submit" value="Submit">
                <button onclick="copyToClip(document.getElementById('foo').innerHTML)">
                  Copy the stuff
                </button>
              </cfif>
          </td>
        </tr>
      </table>
    </form>
  </div>
  <div class="right" id="show">
  &lt;br /&gt;<br />
      &lt;div style="font-family: Arial;color:##5f5f5f;"&gt;<br />
          &lt;a href="#form.link#" title="#form.title#" alias="#form.title#" conversion="false"&gt;&lt;b&gt;&lt;font color="##0193CF"&gt;#form.title#&lt;/font&gt;&lt;/b&gt;&lt;/a&gt;&lt;br /&gt;<br />
          <cfif len(form.SubtitleA)>&lt;b&gt;#form.SubtitleA#&lt;/b&gt;&lt;br /&gt;<br /></cfif>
          <cfif len(form.SubtitleB)>&lt;b&gt;#form.SubtitleB#&lt;/b&gt;&lt;br /&gt;<br /></cfif>
          <cfif len(form.copy)>#form.copy#<br /></cfif>
      &lt;/div&gt;
  </div>
  <hr>
  
<div class="right" id="foo">
<br />
<div style="font-family: Arial;color:##5f5f5f;"><br />
<a href="#form.link#" title="#form.title#" alias="#form.title#" conversion="false"><b><font color="##0193CF">#form.title#</font></b></a><br /><br />
<cfif len(form.SubtitleA)><b>#form.SubtitleA#</b><br /><br /></cfif>
<cfif len(form.SubtitleB)><b>#form.SubtitleB#</b><br /><br /></cfif>
<cfif len(form.copy)>#form.copy#<br /></cfif>
</div>
</div>

</div>
</cfoutput>
