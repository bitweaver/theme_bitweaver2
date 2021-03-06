{strip}
	<div id="bitweaver">
	
		<div id="try">
			<a title="click to learn how to start using bitweaver" style="display:block;width:64px;height:64px;position:absolute;left:0;top:0" href="http://bitweaver.org/wiki/Try+it+out">
				<code style="display:none">Learn about the 50 ways to leave your old CMS for bitweaver:)</code>
			</a>
			<ul>
				<li id="homelink"><a title="homepage" href="/">home</a></li>
				<li id="downlink"><a title="instant download! just add water" href="http://sourceforge.net/project/showfiles.php?group_id=141358">download</a></li>
				<li id="demolink"><a title="try bitweaver in action" href="http://demo.bitweaver.org">demo</a></li>
			</ul>
		</div>

		{if $SCRIPT_NAME eq '/articles/index.php'}
		
		<p id="logo">&nbsp;</p>
		<p>Out of the box bitweaver comes with a full set of content packages like Articles, Wiki, Blogs, Image and Video Galleries &ndash; and framework packages like User Management, Choice of Database, Languages, Theming, Comments &hellip; and many, many more.</p>
		<p class="stop">Each package sports various optional features for you to set up your site just like you need. Bitweaver is ideal for large scale community websites and corporate applications &ndash; yet it is easy to set up and to administrate. It's Open Source, fast, scalable, modular, and free.</p>
		
		{else}

			<a href="/">
				<img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/style_info/preview.gif" height="99" width="116" />
			</a>
			
			<ul>
				<li class="doc"><a href="">doc</a></li>
				<li class="com"><a href="">com</a></li>
				<li class="dev"><a href="">dev</a></li>
			</ul>			

		{/if}

	</div>
{/strip}

{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
	{section name=homeix loop=$l_modules}
		{$l_modules[homeix].data}
	{/section}
{/if}
