{**
 * plugins/blocks/staticSharing/block.tpl
 *
 * Copyright (c) 2013-2018 Simon Fraser University Library
 * Copyright (c) 2003-2018 John Willinsky
 * Copyright (c) 2018 Piero Grandesso for University of Bologna
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Static Sharing buttons for articles block plugin
 *
 *}

<style>
{literal}
ul.share-buttons {
  list-style-type: none;
  padding: 0;
}
ul.share-buttons li {
  display: inline;
}
{/literal}
 </style>

<div class="block" id="sidebarRTSharing">
  <span class="blockTitle">
    {translate key="plugins.block.staticSharing.staticSharingBlockTitle"}
  </span>
  <ul class="share-buttons">
    <li id="share-facebook"><a href="https://www.facebook.com/sharer/sharer.php?u={url page='article' op='view' path=$article->getBestArticleId($currentJournal)}&t={$article->getLocalizedTitle()|strip_tags:false}" title="Share on Facebook" target="_blank"><img src="{$baseUrl}/plugins/blocks/staticSharing/icons/facebook.png"></a></li>
    <li id="share-twitter"><a href="https://twitter.com/intent/tweet?source={url page='article' op='view' path=$article->getBestArticleId($currentJournal)}&text={$article->getAuthorString()|strip}: {$article->getLocalizedTitle()|strip_tags:false} {url page='article' op='view' path=$article->getBestArticleId($currentJournal)}" target="_blank" title="Tweet"><img src="{$baseUrl}/plugins/blocks/staticSharing/icons/twitter.png"></a></li>
    <li id="share-googlePlus"><a href="https://plus.google.com/share?url={url page='article' op='view' path=$article->getBestArticleId($currentJournal)}" target="_blank" title="Share on Google+"><img src="{$baseUrl}/plugins/blocks/staticSharing/icons/googleplus.png"></a></li>
    <li id="share-pocket"><a href="https://getpocket.com/save?url={url page='article' op='view' path=$article->getBestArticleId($currentJournal)}&title={$article->getLocalizedTitle()|strip_tags:false}" target="_blank" title="Add to Pocket"><img src="{$baseUrl}/plugins/blocks/staticSharing/icons/pocket.png"></a></li>
    <li id="share-linkedin"><a href="http://www.linkedin.com/shareArticle?mini=true&url={url page='article' op='view' path=$article->getBestArticleId($currentJournal)}&title={$article->getLocalizedTitle()|strip_tags:false}&summary={$article->getLocalizedAbstract()|strip_tags:false}&source=" target="_blank" title="Share on LinkedIn"><img src="{$baseUrl}/plugins/blocks/staticSharing/icons/linkedin.png"></a></li>
    <li id="share-reddit"><a href="http://www.reddit.com/submit?url={url page='article' op='view' path=$article->getBestArticleId($currentJournal)}&title={$article->getLocalizedTitle()|strip_tags:false}" target="_blank" title="Submit to Reddit"><img alt="Submit to Reddit" src="{$baseUrl}/plugins/blocks/staticSharing/icons/reddit.png" /></a></li>
  </ul>
</div>
