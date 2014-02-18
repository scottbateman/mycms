
{*---------------------------------------------------------------------------*}

<form class="TTWForm" method="post" enctype="multipart/form-data" novalidate
		action='{gl url="admin/people/create"}'>
	<div id="people-container" class="field f_100">
		<label for="people">
			Find people
		</label>
		<input class="find" autocomplete=off type="text" name="people" placeholder="search"/>
	</div>
</form>

{*---------------------------------------------------------------------------*}

{include "templates/snippets/section_title.tpl" title={t s='Add people' m=0}}

<div class="TTWForm-container">

	<form class="TTWForm" method="post" enctype="multipart/form-data" novalidate
			action='{gl url="admin/people/create"}'>

		<div id="people_firstname-container" class="field f_100">
			<label for="people_firstname">
				First Name
			</label>
			<input type="text" name="people_firstname" id="people_firstname" required pattern="[a-zA-Zs]+">
		</div>

		<div id="people_middlename-container" class="field f_100">
			<label for="people_middlename">
				Middle Name
			</label>
			<input type="text" name="people_middlename" id="people_middlename" pattern="[a-zA-Zs]*">
		</div>

		<div id="people_lastname-container" class="field f_100">
			<label for="people_lastname">
				Last Name
			</label>
			<input type="text" name="people_lastname" id="people_lastname" required pattern="[a-zA-Zs]+">
		</div>

		<div id="people_affiliation-container" class="field f_100">
			<label for="people_affiliation">
				Affiliation
			</label>
			<input type="text" name="people_affiliation" id="people_affiliation">
		</div>

		<div id="people_email-container" class="field f_100">
			<label for="people_email">
				Email Address
			</label>
			<input type="email" name="people_email" id="people_email">
		</div>

		<div id="people_nsid-container" class="field f_100">
			<label for="people_nsid">
				NSID
			</label>
			<input type="text" name="people_nsid" id="people_nsid">
		</div>

		<div id="field11-container" class="field f_100">
			<label for="field11">
				Group
			</label>

			<select name="people_group" id="people_group" required>
				<option id="people_group-1" value="faculty"               >{t s='faculty'               m=0}</option>
				<option id="people_group-2" value="adjunct_faculty"       >{t s='adjunct_faculty'       m=0}</option>
				<option id="people_group-3" value="researcher"            >{t s='researcher'            m=0}</option>
				<option id="people_group-4" value="graduate_student"      >{t s='graduate_student'      m=0}</option>
				<option id="people_group-5" value="undergraduate_student" >{t s='undergraduate_student' m=0}</option>
				<option id="people_group-6" value="alumni"                >{t s='alumni'                m=0}</option>
				<option id="people_group-7" value="recent_visitor"        >{t s='recent_visitor'        m=0}</option>
			</select>

		</div>

		<div id="people_start-container" class="field f_100">
			<label for="people_start">
				Start Date
			</label>
			<input class="ttw-date date" id="people_start" maxlength="524288" name="people_start"
				size="20" tabindex="0" title="">
		</div>

		<div id="people_end-container" class="field f_100">
			<label for="people_end">
				End Date
			</label>
			<input class="ttw-date date" id="people_end" maxlength="524288" name="people_end"
			size="20" tabindex="0" title="">
		</div>

		<div id="people_bio-container" class="field f_100">
			<label for="people_bio">
				Bio
			</label>
			<textarea name="people_bio" id="people_bio"></textarea>
		</div>

		<div id="form-submit" class="field f_100 clearfix submit">
			<input type="submit" value="Submit">
		</div>
	</form>
</div>

<br clear="all" />

{*---------------------------------------------------------------------------*}
