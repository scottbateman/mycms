
{*---------------------------------------------------------------------------*}

<div class="publication-teaser-list">
	<ul class="publication_list">
		{if not isset($group) or not $group}
		<!-- If the $group doesn't pass through from last file as a parameter or set as false, it will show the contents in ungroup style. -->
		{for $i=0; $i < $publication.count; $i++}
			<li class="publication_li">{include "templates/snippets/publication_teaser.tpl" publication=$publication.rows[$i]}</li>
		{/for}
		{else}
			<!-- If type is selected to be grouped -->
			{if isset($type)}
				{assign var=curgrp value=-1}
				{for $i=0; $i < $publication.count; $i++}
					{assign var=pub value=$publication.rows[$i]}
					{if $group and $pub.publication_type != $curgrp and isset($pub.publication_type) and !empty($pub.publication_type)}
					<!-- Get the year as group title -->
						{include "templates/snippets/section_title.tpl" title="{t s=$pub.publication_year m=0}"}
						{$curgrp = $pub.publication_year}
					{/if}
					{if isset($pub.publication_type) and !empty($pub.publication_type)}
					<!-- Get the pubilications those are in this year -->
						{include "templates/snippets/publication_teaser.tpl" publication=$pub}
					{/if}
				{/for}
			{else}
				<!-- If the $group pass through from last file as a parameter and set as true, it will show the contents in group by year. -->
				{assign var=curgrp value=-1}
				{for $i=0; $i < $publication.count; $i++}
					{assign var=pub value=$publication.rows[$i]}
					{if $group and $pub.publication_year != $curgrp and isset($pub.publication_year) and !empty($pub.publication_year)}
					<!-- Get the year as group title -->
						{include "templates/snippets/section_title.tpl" title="{$pub.publication_year}"}
						{$curgrp = $pub.publication_year}
					{/if}
					{if isset($pub.publication_year) and !empty($pub.publication_year)}
					<!-- Get the pubilications those are in this year -->
						{include "templates/snippets/publication_teaser.tpl" publication=$pub}
					{/if}
				{/for}
			{/if}
			<!-- If there are some publications not defined year, the unknow will shows up. 
			When I check the database, the year column is no null so this situation won't happen. -->
			<!--{include "templates/snippets/section_title.tpl" title={t s='unknown' m=0}}
			{for $i=0; $i < $publication.count; $i++}
				{assign var=pub value=$publication.rows[$i]}
				{if !isset($pub.publication_year) or empty($pub.publication_year)}
					{include "templates/snippets/publication_teaser.tpl" publication=$pub}
				{/if}
			{/for}-->
		{/if}
	</ul>
</div>

{*---------------------------------------------------------------------------*}