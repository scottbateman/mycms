
{*---------------------------------------------------------------------------*}
<!--<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/docs.css" rel="stylesheet">  
<link href="static/css/carousel.css" rel="stylesheet">
<script src="static/js/bootstrap.js"></script>-->
<!-- Image display -->
{if ($show_main_page_tiles==true)}
<div id="imagedisplay">
	{if isset($imglist)}
		{for $i=0; $i<$imglist.count and $i<48 ; $i++}
			{assign var=itm value=$imglist.rows[$i]}
			<a href='{gl url="{$itm.type}/{$itm.id}"}' title="{$itm.title}">
			<img class="thumbnail" src='{gl url="files/{$itm.type}/image/{$itm.image}"}'/>
			</a>
		{/for}
	{/if}
</div>
{/if}
{if ($show_main_page_carousel==true)}
<div id = "homeCarousel" class="carousel slide"  data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target = "#homeCarousel" data-slide-to = "0" class = "active"></li>
		<li data-target = "#homeCarousel" data-slide-to = "1"></li>
		<li data-target = "#homeCarousel" data-slide-to = "2"></li>
	</ol>

	<div class="carousel-inner">
		<div class="item active">
			<img src="static/images/IMG_0877.JPG" class="img-responsive">
			<div class="container">
                <div class="carousel-caption">
                  <h1>caption 01</h1>
                </div>
      		</div>
		</div>

		<div class="item">
			<img src="static/images/desktop-backgrounds-fresh.jpg" class="img-responsive">
			<div class="container">
                <div class="carousel-caption">
                  <h1>caption 02</h1>
                </div>
      		</div>
		</div>

		<div class="item">
			<img src="static/images/desktop-backgrounds-wallpaper-background-hd(3).jpg" class="img-responsive">
			<div class="container">
                <div class="carousel-caption">
                  <h1>caption 03</h1>
                </div>
      		</div>
		</div>
	</div>

	<a class="carousel-control left" href="#homeCarousel" data-slide="prev">
	<span class="icon-prev"></span>
	</a>
	<a class="carousel-control right" href="#homeCarousel" data-slide="next">
	<span class="icon-next"></span>
	</a>
</div>
{/if}


{*---------------------------------------------------------------------------*}

<p id="hci_description">{t s="HCI_DESCRIPTION" m=0}</p>

{include "templates/snippets/section_title.tpl" title={t s=Faculty m=0}}
{if isset($faculty)}
	{include "templates/snippets/people_teaser_list.tpl" people=$faculty group=false}
{/if}
 
{*---------------------------------------------------------------------------*}

{include "templates/snippets/section_title.tpl" title={t s='Current Research' m=0}}
{if isset($research)}
	{include "templates/snippets/research_teaser_list.tpl" research=$research}
{/if}
<a href="{gl url='research'}">{t s='View All' m=0}<span class="arrows">&gt;&gt;</span></a>

{*---------------------------------------------------------------------------*}

{include "templates/snippets/section_title.tpl" title={t s='Recent Publications' m=0}}
{if isset($publication)}
	{include "templates/snippets/publication_teaser_list.tpl" publication=$publication}
{/if}
<a href="{gl url='publications'}">{t s='View All' m=0}<span class="arrows">&gt;&gt;</span></a>

{*---------------------------------------------------------------------------*}

		
<!--<div class="content">
	<div id="hs_container" class="hs_container">
		<div class="hs_area hs_area1">
			<img class="hs_visible" src="images/area1/1.jpg" alt=""/>
			<img src="images/area1/2.jpg" alt=""/>
			<img src="images/area1/3.jpg" alt=""/>
		</div>
		<div class="hs_area hs_area2">
			<img class="hs_visible" src="images/area2/1.jpg" alt=""/>
			<img src="images/area2/2.jpg" alt=""/>
			<img src="images/area2/3.jpg" alt=""/>
		</div>
		<div class="hs_area hs_area3">
			<img class="hs_visible" src="images/area3/1.jpg" alt=""/>
			<img src="images/area3/2.jpg" alt=""/>
			<img src="images/area3/3.jpg" alt=""/>
		</div>
		<div class="hs_area hs_area4">
			<img class="hs_visible" src="images/area4/1.jpg" alt=""/>
			<img src="images/area4/2.jpg" alt=""/>
			<img src="images/area4/3.jpg" alt=""/>
		</div>
		<div class="hs_area hs_area5">
			<img class="hs_visible" src="images/area5/1.jpg" alt=""/>
			<img src="images/area5/2.jpg" alt=""/>
			<img src="images/area5/3.jpg" alt=""/>
		</div>
	</div>
</div>-->