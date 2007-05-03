{* $Header: /cvsroot/bitweaver/_bit_styles/bitweaver2/boards/mod_recent_posts.tpl,v 1.1 2007/05/03 21:02:37 laetzer Exp $ *}
{strip}
{if $gBitSystem->isPackageActive('boards') && {$modLastBoardPosts}
	{bitmodule title="$moduleTitle" name="last_board_posts"}
		<ul>
			{section name=ix loop=$modLastBoardPosts}
				<li class="{cycle values="odd,even"}">
					<cite>{displayname hash=$modLastBoardPosts[ix]}</cite>
					<var>{$modLastBoardPosts[ix].created|date_format:"%b %d %H:%M"}</var>
					<q><a href="{$modLastBoardPosts[ix].display_url}">{$modLastBoardPosts[ix].title|default:"Comment"}</a></q>
				</li>
			{sectionelse}
				<li></li>
			{/section}
		</ul>
		<a class="more" href="{$smarty.const.BOARDS_PKG_URL}{if $modRecentPostsBoardId}index.php?b={$modRecentPostsBoardId}{/if}">
			{tr}Show More{/tr}
		</a>
	{/bitmodule}
{/if}
{/strip}