
{*---------------------------------------------------------------------------*}

<form class="TTWForm" method="post" enctype="multipart/form-data" novalidate
		action='{gl url="admin/publication/create"}'>
	<div id="publication-container" class="field f_100">
		<label for="publication">
			Find publication
		</label>
		<input class="find" autocomplete=off type="text" name="publication" placeholder="search"/>
	</div>
</form>

{*---------------------------------------------------------------------------*}

{if isset($publication)}
{include "templates/snippets/section_title.tpl" title={t s='Edit publication' m=0}}

<div class="TTWForm-container"
			data-type='publication'
			data-id='{$publication.publication_id}'
>

	<form class="TTWForm" method="post" enctype="multipart/form-data" novalidate
		action='{gl url="admin/publication/edit"}/{$publication.publication_id}'
	>

		<div id="publication_title-container" class="field f_100">
			<label for="publication_title">
				Title
			</label>
			<input type="text" name="publication_title" id="publication_title" required
				value="{$publication.publication_title}">
		</div>

		<div id="publication_type-container" class="field f_100">
			<label for="publication_type">
				Type
			</label>
				<select name="publication_type" id="publication_type" required>
				<option id="publication_type-1"   value="article"       {if "article"       == $publication.publication_type}selected{/if} >{t s='article'       m=0}</option>
				<option id="publication_type-2"   value="book"          {if "book"          == $publication.publication_type}selected{/if} >{t s='book'          m=0}</option>
				<option id="publication_type-3"   value="booklet"       {if "booklet"       == $publication.publication_type}selected{/if} >{t s='booklet'       m=0}</option>
				<option id="publication_type-4"   value="conference"    {if "conference"    == $publication.publication_type}selected{/if} >{t s='conference'    m=0}</option>
				<option id="publication_type-5"   value="inbook"        {if "inbook"        == $publication.publication_type}selected{/if} >{t s='inbook'        m=0}</option>
				<option id="publication_type-6"   value="incollection"  {if "incollection"  == $publication.publication_type}selected{/if} >{t s='incollection'  m=0}</option>
				<option id="publication_type-7"   value="inproceedings" {if "inproceedings" == $publication.publication_type}selected{/if} >{t s='inproceedings' m=0}</option>
				<option id="publication_type-8"   value="manual"        {if "manual"        == $publication.publication_type}selected{/if} >{t s='manual'        m=0}</option>
				<option id="publication_type-9"   value="mastersthesis" {if "mastersthesis" == $publication.publication_type}selected{/if} >{t s='mastersthesis' m=0}</option>
				<option id="publication_type-10"  value="misc"          {if "misc"          == $publication.publication_type}selected{/if} >{t s='misc'          m=0}</option>
				<option id="publication_type-11"  value="phdthesis"     {if "phdthesis"     == $publication.publication_type}selected{/if} >{t s='phdthesis'     m=0}</option>
				<option id="publication_type-12"  value="proceedings"   {if "proceedings"   == $publication.publication_type}selected{/if} >{t s='proceedings'   m=0}</option>
				<option id="publication_type-13"  value="techreport"    {if "techreport"    == $publication.publication_type}selected{/if} >{t s='techreport'    m=0}</option>
				<option id="publication_type-14"  value="unpublished"   {if "unpublished"   == $publication.publication_type}selected{/if} >{t s='unpublished'   m=0}</option>
			</select>
		</div>

		<div id="publication_year-container" class="field f_100">
			<label for="publication_year">
				Year
			</label>
			<select name="publication_year" id="publication_year" class="yearpicker" required>
			</select>
		</div>

		<div id="publication_month-container" class="field f_100">
			<label for="publication_month">
				Month
			</label>
			<select name="publication_month" id="publication_month" class="monthpicker">
			</select>
		</div>

		<div id="publication_toappear-container" class="field f_100">
			<label for="publication_toappear">
				To appear
			</label>
			<input type="checkbox" name="publication_toappear" id="publication_toappear"
				value="{$publication.publication_toappear}"
			>
		</div>


		<div id="publication_doi_number-container" class="field f_100">
			<label for="publication_doi_number">
				DOI
			</label>
			<input type="text" name="publication_doi_number" id="publication_doi_number"
				value="{$publication.publication_doi_number}"
			>
		</div>

		<div id="publication_url-container" class="field f_100">
			<label for="publication_url">
				URL
			</label>
			<input type="text" name="publication_url" id="publication_url"
				value="{$publication.publication_url}"
			>
		</div>

		<div id="publication_school-container" class="field f_100">
			<label for="publication_school">
				School
			</label>
			<input type="text" name="publication_school" id="publication_school"
				value="{$publication.publication_school}"
			>
		</div>

		<div id="publication_institution-container" class="field f_100">
			<label for="publication_institution">
				Institution
			</label>
			<input type="text" name="publication_institution" id="publication_institution"
				value="{$publication.publication_institution}"
			>
		</div>

		<div id="publication_organization-container" class="field f_100">
			<label for="publication_organization">
				Organization
			</label>
			<input type="text" name="publication_organization" id="publication_organization"
				value="{$publication.publication_organization}"
			>
		</div>

		<div id="publication_journal-container" class="field f_100">
			<label for="publication_journal">
				Journal
			</label>
			<input type="text" name="publication_journal" id="publication_journal"
				value="{$publication.publication_journal}"
			>
		</div>

		<div id="publication_booktitle-container" class="field f_100">
			<label for="publication_booktitle">
				Book title
			</label>
			<input type="text" name="publication_booktitle" id="publication_booktitle"
				value="{$publication.publication_booktitle}"
			>
		</div>

		<div id="publication_edition-container" class="field f_100">
			<label for="publication_edition">
				Edition
			</label>
			<input type="text" name="publication_edition" id="publication_edition"
				value="{$publication.publication_edition}"
			>
		</div>

		<div id="publication_pages-container" class="field f_100">
			<label for="publication_pages">
				Pages
			</label>
			<input type="text" name="publication_pages" id="publication_pages"
				value="{$publication.publication_pages}"
			>
		</div>

		<div id="publication_number-container" class="field f_100">
			<label for="publication_number">
				Number
			</label>
			<input type="text" name="publication_number" id="publication_number"
				value="{$publication.publication_number}"
			>
		</div>

		<div id="publication_volume-container" class="field f_100">
			<label for="publication_volume">
				Volume
			</label>
			<input type="text" name="publication_volume" id="publication_volume"
				value="{$publication.publication_volume}"
			>
		</div>


		<div id="publication_chapter-container" class="field f_100">
			<label for="publication_chapter">
				Chapter
			</label>
			<input type="text" name="publication_chapter" id="publication_chapter"
				value="{$publication.publication_chapter}"
			>
		</div>

		<div id="publication_technumber-container" class="field f_100">
			<label for="publication_technumber">
				Tech number
			</label>
			<input type="text" name="publication_technumber" id="publication_technumber"
				value="{$publication.publication_technumber}"
			>
		</div>

		<div id="publication_series-container" class="field f_100">
			<label for="publication_series">
				Series
			</label>
			<input type="text" name="publication_series" id="publication_series"
				value="{$publication.publication_series}"
			>
		</div>

		<div id="publication_isbn-container" class="field f_100">
			<label for="publication_isbn">
				ISBN
			</label>
			<input type="text" name="publication_isbn" id="publication_isbn"
				value="{$publication.publication_isbn}"
			>
		</div>

		<div id="publication_address-container" class="field f_100">
			<label for="publication_address">
				Address
			</label>
			<input type="text" name="publication_address" id="publication_address"
				value="{$publication.publication_address}"
			>
		</div>

		<div id="publication_howpublished-container" class="field f_100">
			<label for="publication_howpublished">
				How published
			</label>
			<input type="text" name="publication_howpublished" id="publication_howpublished"
				value="{$publication.publication_howpublished}"
			>
		</div>

		<div id="publication_publisher-container" class="field f_100">
			<label for="publication_publisher">
				Publisher
			</label>
			<input type="text" name="publication_publisher" id="publication_publisher"
				value="{$publication.publication_publisher}"
			>
		</div>

		<div id="publication_note-container" class="field f_100">
			<label for="publication_note">
				Note
			</label>
			<input type="text" name="publication_note" id="publication_note"
				value="{$publication.publication_note}"
			>
		</div>

		<div id="publication_abstract-container" class="field f_100">
			<label for="publication_abstract">
				Abstract
			</label>
			<textarea name="publication_abstract" id="publication_abstract">{$publication.publication_note}</textarea>
		</div>

		<div id="form-submit" class="field f_100 clearfix submit">
			<input type="submit" value="Submit">
		</div>

		{include "templates/snippets/section_title.tpl" title={t s='Images' m=0}}
		<div id="image-container" class="field f_100">
			<label for="image">
				Upload image<div class="smalltext">(.jpg, .gif, or .png)</div>
			</label>
			<input type="file" name="image" accept="image/*"/>
			{include "templates/snippets/image_thumb_list.tpl" image=$publication.image content='publication'}
		</div>

		{include "templates/snippets/section_title.tpl" title={t s='Videos' m=0}}
		<div id="video-container" class="field f_100">
			<label for="video">
				Upload video<div class="smalltext">(.mp4, .webm, .ogg)</div>
			</label>
			<input type="file" name="video" accept="video/*"/>
			{include "templates/snippets/video_list.tpl" video=$publication.video content='publication'}
		</div>

		{include "templates/snippets/section_title.tpl" title={t s='Documents' m=0}}
		<div id="doc-container" class="field f_100">
			<label for="doc">
				Upload document<div class="smalltext">(.pdf)</div>
			</label>
			<input type="file" name="doc"/>
			{include "templates/snippets/doc_list.tpl" doc=$publication.doc content='publication'}
		</div>

		{include "templates/snippets/section_title.tpl" title={t s='People' m=0}}
		<div id="people-container" class="field f_100">
			<label for="people">
				Add people
			</label>
			<input class="refrence" autocomplete=off type="text" name="people" placeholder="search"/>
			{include "templates/snippets/people_refrence_list.tpl" people=$publication.people}
		</div>

		{include "templates/snippets/section_title.tpl" title={t s='Research' m=0}}
		<div id="research-container" class="field f_100">
			<label for="research">
				Add research
			</label>
			<input class="refrence" autocomplete=off type="text" name="research" placeholder="search"/>
			{include "templates/snippets/research_teaser_list.tpl" research=$publication.research}
		</div>

	</form>
</div>

<br clear="all" />

{/if}

{*---------------------------------------------------------------------------*}
