<?php

/**
 * @defgroup plugins_blocks_staticSharing
 */

/**
 * @file plugins/blocks/staticSharing/index.php
 *
 * Copyright (c) 2013-2018 Simon Fraser University Library
 * Copyright (c) 2003-2018 John Willinsky
 * Copyright (c) 2018 Piero Grandesso for University of Bologna
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_blocks_staticSharing
 * @brief Wrapper for staticSharing block plugin.
 *
 */

require_once('StaticSharingBlockPlugin.inc.php');

return new StaticSharingBlockPlugin();

?>
