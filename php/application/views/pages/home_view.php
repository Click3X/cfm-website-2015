<div id="home-page" class="page-content-inner">
	<div id="intro-video" class="cfm-videoplayer" nocontrols autoplay loop data-video-name="<?= base_url(); ?>video/cfm_intro" data-poster="<?= base_url(); ?>img/posters/cfm_intro.jpg">
	    <div class="cfm-videoplayer-inner">
	    	<div class="video-anchor-link"><a href="#reel-video"><span class="label">Watch Our Reel</span><span class="arrow"></span></a></div>
            <video class="cfm-videoplayer-mobile" width="960" height="540" controls></video>
            <div class="cfm-videoplayer-poster">
            	<div class="cfm-videoplayer-poster-header">
            		<div class="cfm-videoplayer-poster-header-inner">
				  		<div class="cfm-videoplayer-playbutton"><span class="arrow"></span></div>
					</div>
				</div>
            </div>
            <video class="cfm-videoplayer-desktop" width="960" height="540"></video>
            <div class="cfm-video-controls">
            	<ul>
					<li class="cfm-video-play-pause-btn cfm-video-btn"></li>
					<li class="cfm-video-fullscreen-btn cfm-video-btn"></li>
					<li class="cfm-video-mute-btn cfm-video-btn"></li>
				</ul><div class="cfm-video-progress-container"><a class="cfm-video-seek-bar"></a><input class="cfm-video-seek-bar-input" type="range" value="0"></div>
			</div>
	    </div>
	</div>
	<div class="section-header">
		<h2>FEATURED WORK</h2>
	</div>
	<div class="cfm-project-gallery">
		<ul>
			<?php foreach ($featured_projects as $key => $project): ?>
			<li data-id="<?= $project->id; ?>" data-image="<?php echo base_url().'img/projects/'.$project->thumbnail_image.'.jpg'; ?>">
				<div class="project-inner">
					<a class="cfm-project" href="<?= base_url().'featured/'.$project->slug; ?>" data-navigate-to="featured/<?= $project->slug; ?>">
						<div class="project-label"><div class="project-label-inner"><h2><?= $project->title; ?></h2></div></div>
					</a>
				</div>
			</li>
			<?php endforeach; ?>
		</ul>
	</div>
	<div id="reel-video" class="cfm-videoplayer" data-video-name="http://media.click3x.com/video/011315_CFM_REEL" data-poster="<?= base_url(); ?>img/posters/reel_poster.jpg">
	    <div class="cfm-videoplayer-inner">
            <video class="cfm-videoplayer-mobile" width="960" height="540" controls></video>
            <div class="cfm-videoplayer-poster">
            	<div class="cfm-videoplayer-poster-header">
            		<div class="cfm-videoplayer-poster-header-inner">
				  		<div class="cfm-videoplayer-playbutton"><span class="arrow"></span></div>
					</div>
				</div>
            </div>
            <video class="cfm-videoplayer-desktop" width="960" height="540"></video>
            <div class="cfm-video-controls">
            	<ul>
					<li class="cfm-video-play-pause-btn cfm-video-btn"></li>
					<li class="cfm-video-fullscreen-btn cfm-video-btn"></li>
					<li class="cfm-video-mute-btn cfm-video-btn"></li>
				</ul><div class="cfm-video-progress-container"><a class="cfm-video-seek-bar"></a><input class="cfm-video-seek-bar-input" type="range" value="0"></div>
			</div>
	    </div>
	</div>
</div>