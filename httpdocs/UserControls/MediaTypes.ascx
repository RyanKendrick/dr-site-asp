<%@ Control Language="C#" %>

<div class="btns" style="margin-bottom:var(--gap-l)">
	<button onclick="showMarketMedia(true)">Residential</button>

	<button onclick="showMarketMedia(false)">Commercial</button>
</div>

<div id="residentialMediaContainer" class="media-grid">

	<div class="photography">
		<a class="media-grid-btn" href="/residential/photography">
			<span>Photography</span>
		</a>
	</div>
	<div class="drone-services">
		<a class="media-grid-btn" href="/residential/drone">
			<span>Drone Services</span>
		</a>
	</div>
	<div class="renderings">
		<a class="media-grid-btn" href="/residential/renderings">
			<span>Renderings</span>
		</a>
	</div>

	<div class="videography">
		<a class="media-grid-btn" href="/residential/videography">
			<span>Videography</span>
		</a>
	</div>
	<div class="staging">
		<a class="media-grid-btn" href="/residential/virtual-staging">
			<span>Virtual Staging</span>
		</a>
	</div>
	<div class="feature-sheets">
		<a class="media-grid-btn" href="/residential/feature-sheets">
			<span>Feature Sheets</span>
		</a>
	</div>

	<div class="virtual-tour">
		<a class="media-grid-btn" href="/residential/3d-tours">
			<span>3D Tours</span>
		</a>
	</div>
	<div class="floor-plan">
		<a class="media-grid-btn" href="/residential/floorplans">
			<span>Floor Plans</span>
		</a>
	</div>
	<div class="website">
		<a class="media-grid-btn" href="/residential/websites">
			<span>Listing Websites</span>
		</a>
	</div>

</div>

<div id="commercialMediaContainer" style="display: none" class="media-grid">

	<div class="photography-comm">
		<a class="media-grid-btn" href="/commercial/photography">
			<span>Photography</span>
		</a>
	</div>
	<div class="drone-services-comm">
		<a class="media-grid-btn" href="/commercial/drone">
			<span>Drone Services</span>
		</a>
	</div>
	<div class="renderings-comm">
		<a class="media-grid-btn" href="/commercial/renderings">
			<span>Renderings</span>
		</a>
	</div>

	<div class="videography-comm">
		<a class="media-grid-btn" href="/commercial/videography">
			<span>Videography</span>
		</a>
	</div>
	<div class="staging-comm">
		<a class="media-grid-btn" href="/commercial/virtual-staging">
			<span>Virtual Staging</span>
		</a>
	</div>
	<div class="plane-photo-comm">
		<a class="media-grid-btn" href="/commercial/plane-photo">
			<span>Plane Photography</span>
		</a>
	</div>

	<div class="virtual-tour-comm">
		<a class="media-grid-btn" href="/commercial/3d-tours">
			<span>3D Tours</span>
		</a>
	</div>
	<div class="floor-plan-comm">
		<a class="media-grid-btn" href="/commercial/floorplans">
			<span>Floor Plans</span>
		</a>
	</div>
	<div class="website-comm">
		<a class="media-grid-btn" href="/commercial/renos">
			<span>Virtual Renovation</span>
		</a>
	</div>

</div>