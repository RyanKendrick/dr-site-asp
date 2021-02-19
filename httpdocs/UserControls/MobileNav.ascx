<%@ Control Language="C#" %>

<div class="mobile-screen-show">

	<a
		class="mobile-menu-btn"
		onclick="document.getElementById('mobileMenu').show=true">
	</a>

	<ns-float-panel id="mobileMenu">
		<div class="mobile-menu">
			
			<a 
				data-panel-hide-btn
				class="panel-close"
				style="align-self: flex-end;margin-bottom:var(--gap-l)"
				></a>
			

			<a href="/Default">Our Platform</a>
			<a href="/media">Our Media</a>
			<a href="/how-it-works">How it Works</a>
			<a onclick="openContactModal()">Contact Us</a>
			<a href="http://vrlportal.com/Account/Login" style="margin-top:var(--gap-xl)">
				Client Login
			</a>
		</div>
	</ns-float-panel>

</div>