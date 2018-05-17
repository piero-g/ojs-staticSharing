<?php

/**
 * @file plugins/blocks/staticSharing/StaticSharingBlockPlugin.inc.php
 *
 * Copyright (c) 2013-2018 Simon Fraser University Library
 * Copyright (c) 2003-2018 John Willinsky
 * Copyright (c) 2018 Piero Grandesso for University of Bologna
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class StaticSharingBlockPlugin
 * @ingroup plugins_blocks_staticSharing
 *
 * @brief Class for staticSharing block plugin
 */

import('lib.pkp.classes.plugins.BlockPlugin');

class StaticSharingBlockPlugin extends BlockPlugin {
	/**
	 * Get the display name of this plugin.
	 * @return String
	 */
	function getDisplayName() {
		return __('plugins.block.staticSharing.displayName');
	}

	/**
	 * Get a description of the plugin.
	 */
	function getDescription() {
		return __('plugins.block.staticSharing.description');
	}

	/**
	 * Get the supported contexts (e.g. BLOCK_CONTEXT_...) for this block.
	 * @return array
	 */
	function getSupportedContexts() {
		return array(BLOCK_CONTEXT_RIGHT_SIDEBAR);
	}

	/**
	 * Get the HTML contents for this block.
	 * @param $templateMgr object
	 * @return $string
	 */
	function getContents(&$templateMgr) {
		// Only show the block for article pages.
		switch (Request::getRequestedPage() . '/' . Request::getRequestedOp()) {
			case 'article/view':
				if (!$templateMgr->get_template_vars('article')) return '';
				return parent::getContents($templateMgr);
			default:
				return '';
		}
	}
}

?>
