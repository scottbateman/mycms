
{*---------------------------------------------------------------------------*}
<script type="text/javascript" src="{$weburl}static/js/publication_filter.js"></script>
<!--search box-->
<form class="TTWForm" method="post" enctype="multipart/form-data" novalidate
		action='{gl url="publications"}'>
	<div id="publication-container" class="field f_100">
		<label for="publication">
			Find publication
		</label>
		<input class="find" autocomplete=off type="text" name="publication" placeholder="search"/>
	</div>
</form>
<h2>{t s=Publications m=0}</h2>
{if isset($publications)}
<!-- FILTER -->
	<select id="types">
		<option value="" selected style="display:none;">Types</option>
		<option id="publication_type-1"   value="article"       >{t s='article'       m=0}</option>
		<option id="publication_type-2"   value="book"          >{t s='book'          m=0}</option>
		<option id="publication_type-3"   value="booklet"       >{t s='booklet'       m=0}</option>
		<option id="publication_type-4"   value="conference"    >{t s='conference'    m=0}</option>
		<option id="publication_type-5"   value="inbook"        >{t s='inbook'        m=0}</option>
		<option id="publication_type-6"   value="incollection"  >{t s='incollection'  m=0}</option>
		<option id="publication_type-7"   value="inproceedings" >{t s='inproceedings' m=0}</option>
		<option id="publication_type-8"   value="inworkshopproceedings" >{t s='inworkshopproceedings' m=0}</option>
		<option id="publication_type-9"   value="manual"        >{t s='manual'        m=0}</option>
		<option id="publication_type-10"  value="mastersthesis" >{t s='mastersthesis' m=0}</option>
		<option id="publication_type-11"  value="misc"          >{t s='misc'          m=0}</option>
		<option id="publication_type-12"  value="phdthesis"     >{t s='phdthesis'     m=0}</option>
		<option id="publication_type-13"  value="proceedings"   >{t s='proceedings'   m=0}</option>
		<option id="publication_type-14"  value="techreport"    >{t s='techreport'    m=0}</option>
		<option id="publication_type-15"  value="unpublished"   >{t s='unpublished'   m=0}</option>
	</select>
	<div class="year_group">{include "templates/snippets/publication_teaser_list.tpl" publication=$publications group=true}</div>
	<div class="type_result"></div>
{/if}

{*---------------------------------------------------------------------------*}
