{if $gBitSystem->isFeatureActive( 'site_bottom_column' ) && $b_modules && !$gHideModules}
	{section name=homeix loop=$b_modules}
		{$b_modules[homeix].data}
	{/section}
{/if}

<span class="clear"><!-- --></span>

<p id="poweredby"><a class="external" href="http://www.bitweaver.org">Powered by bitweaver</a></p>
{if $gBitSystem->isFeatureActive( 'babelfish' )}
	{include file="bitpackage:languages/babelfish.tpl"}
{/if}