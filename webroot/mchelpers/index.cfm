<cfinclude template="../includes/inc_header.cfm">

<cfparam name="form.title" default="">
<cfparam name="form.link" default="">
<cfparam name="form.SubtitleA" default="">
<cfparam name="form.SubtitleB" default="">
<cfparam name="form.copy" default="">

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
          </td>
        </tr>
      </table>
    </form>
  </div>
  <div class="right">
  &lt;br /&gt;<br />
      &lt;div style="font-family: Arial;color:##5f5f5f;"&gt;<br />
          &lt;a href="#form.link#" title="#form.title#" alias="#form.title#" conversion="false"&gt;&lt;b&gt;&lt;font color="##0193CF"&gt;#form.title#&lt;/font&gt;&lt;/b&gt;&lt;/a&gt;&lt;br /&gt;<br />
          <cfif len(form.SubtitleA)>&lt;b&gt;#form.SubtitleA#&lt;/b&gt;&lt;br /&gt;<br /></cfif>
          <cfif len(form.SubtitleB)>&lt;b&gt;#form.SubtitleB#&lt;/b&gt;&lt;br /&gt;<br /></cfif>
          <cfif len(form.copy)>#form.copy#<br /></cfif>
      &lt;/div&gt;
  </div>
</div>
</cfoutput>
