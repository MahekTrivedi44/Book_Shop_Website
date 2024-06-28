<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html> 
	<head>
	<style>
	body {
      font-family: 'Comic Sans MS', cursive, sans-serif;
	  color= white;
	}
	h1 {
      text-align: center;
      background: linear-gradient(to right, #26223D,#352F57); /* Gradient background for MARS BOOKSHOP */
      width: 88%;
      margin: auto;
      color: white;
      padding: 10px 20px;
      border-radius: 10px;
    .bcontainer {
      position: relative;
      display: inline-block;
    } 
    }
	.image-container {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      overflow: hidden;
      z-index: -1; /* Ensure the image stays behind other content */
      background-image: url('Scifi.jpg');
      background-size: cover;
      background-position: center;
    }
	.text {
      color: white;
      font-size: 10px;
      position: absolute;
      top: 50%;
      left: 50%;
      -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%);
      text-align: center;
    }
	.content {
      position: fixed;
      top: 58%; /* Start from below 50% of the screen */
      left: 5%; /* Adjusted left spacing */
      right: 2%; /* Adjusted right spacing */
      transform: translateY(-50%); /* Center vertically */
      background: rgba(0, 0, 0, 0.5);
      color: #f1f1f1;
      width: 88%; /* Adjusted width */
      height: 80%;
      padding: 5px;
      box-sizing: border-box; /* Include padding in width calculation */
      overflow-y: auto; /* Enable vertical scrolling if content exceeds container height */
      max-height: calc(75% - 5px); /* Set max height to 50% of screen minus padding */
      border-radius: 25px; /* Add curved edges */
    }
	th, td {
      border: 1px solid white;
      border-radius: 10px;
	  text-align: center;
	  color: white;
	</style>
	</head>
	
	<body>
	<h1><xsl:value-of select="Mars_bookshop/book/Genre"/></h1>
    <div class="image-container"></div>
    <div class="content">
			<table style="width:100%" height="50%" width="80%" cellspacing="5" cellpadding="5">
			<tr>
				<th>Book</th>
				<th>Summary</th>
				<th>Title</th>
				<th>Author's First Name</th>
				<th>Author's Last Name</th>
				<th>Publisher_Date</th>
				<th>price</th>
				
			</tr>
			<xsl:for-each select="Mars_bookshop/book">
			<tr>
			    <td><div class="bcontainer">
				<img src="{image}" alt="{title}" class="bimage"/>
				</div></td>
				<td><xsl:value-of select="description"/></td>
				<td><xsl:value-of select="title"/></td>
				<td><xsl:value-of select="author/FirstName"/></td>
				<td><xsl:value-of select="author/LastName"/></td>
				<td><xsl:value-of select="published_date"/></td>
				<td><xsl:value-of select="price"/></td>
			</tr>
			</xsl:for-each>
		</table>
	</div>
	</body>	
	</html>	
</xsl:template>
</xsl:stylesheet>
