{include file="header.tpl"}
		
		<div class="row jobmain">
				{if $jobs}
				<div class="span4">
				<div class="spannerfirst">
				<h6>{$translations.category.display_only}</h6>
				<ul>
					{section name=tmp loop=$types}
						<!--Doesn't seem to be type-support for cities yet-->
					<li><a href="{$BASE_URL}{$URL_JOBS_IN_CITY}/{$city_ascii_name}/{$types[tmp].var_name}/" title="{$current_category} {$types[tmp].name}">{$types[tmp].name}</a></li>
					{/section}
					
				</ul>
				</div>
				</div><!-- #sort-by-type -->
				{/if}
				<div class="span12">
				<div class="job-details zebra-striped"><!-- Recent Jobs /-->
				<h6>{$translations.jobscity.jobs_in_other_cities}</h6>
				{if $jobs}
					{include file="jobs-list.tpl"}
				{/if}
				</div><!-- End Recent Jobs /-->
				</div>
		</div><!-- #content -->

{include file="footer.tpl"}