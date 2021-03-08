<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DigitalResolution_Marketing._Default" %>

<%@ Register Src="~/UserControls/MediaTypes.ascx" TagPrefix="uc1" TagName="MediaTypes" %>
<%@ Register Src="~/UserControls/MobileNav.ascx"
TagPrefix="uc1" TagName="MobileNav" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="centered-container primary-header">

	<div style="display: flex; flex-direction: column;">
		<img class="primary-logo" src="/assets/dr-logo.png"/>
		<div> Powered by VR Listing inc. <img height="10px;" src="/assets/vrl-logo.png" /> </div>
	</div>

	<uc1:MobileNav runat="server" ID="MobileNav"/>

	<div class="xs-screen-hide">
		<a href="tel:1-888-334-5478">1-888-334-5478<span class="sml-screen-hide"> (LIST)</span></a>
		<div class="sml-screen-hide">
			<a href="http://vrlportal.com/Account/Login">
				<b>
					CLIENT LOGIN
				</b>
			</a>
		</div>
	</div>

</div>

<div class="centered-container no-padding" style="display: flex">

	<main-nav class="mobile-screen-hide" active-link="platform"></main-nav>

	<div style="flex-grow: 1">

		<page-banner title="Real Estate <br/> Media Solutions" img-src="/assets/banner-img1.jpeg"></page-banner>

	</div>

</div>

<div class="layout-section dark">

	<div class="centered-container">

		<div class="platform-reveal">
			<div class="platform-reveal-left" style="flex-basis: 40%; flex-grow: 1; text-align: center;">
				<h2>
					Optimize your Real Estate initiatives <br/>
					with our premium media options <br/>
					and management.
				</h2>

				<p>
					A customizable web platform that helps
					brokerages and property managers order,
					schedule and manage their real estate media.
				</p>

				<p>
					Our white label solution easily integrates
					with your marketing department and provides
					your team with a comprehensive selection of
					premium media options.
				</p>

				<div class="btns">

					<button onclick="openContactModal()">
						Schedule a Demo
					</button>

				</div>

			</div>

			<div id="screenshotsUI">
				<div>
					<img class="portal-screenshot" src="/assets/screenshots/select-services.png">
				</div>
				<div>
					<img class="portal-screenshot" src="/assets/screenshots/schedule.png">
				</div>
				<div>
					<img class="portal-screenshot" src="/assets/platform-img-1.png">
				</div>
			</div>
		</div>

	</div>

</div>

<!-- Core Features Section -->
<div class="layout-section">

	<div class="centered-container">

		<h2>
			Media and Management Tools <br/>
			That Set Your Marketing Team up for Success
		</h2>

		<div class="features">

			<a href="/how-it-works#order-steps" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/alarm-clock-128.png" alt="">
				<span>3 Step Ordering</span>
			</a>

			<a href="/how-it-works#qa-assurance" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/approval-128.png" alt="">
				<span>Product Quality</span>
				<span>Control & Assurance</span>
			</a>

			<a href="/how-it-works#scaleable" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/combo-128.png" alt="">
				<span>Platform Scalability</span>
			</a>
			<a href="/how-it-works#notifications" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/speech-bubble-5-128.png" alt="">
				<span>Real-Time Notifications</span>
			</a>

			<a href="/how-it-works#internal" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/conference-128.png" alt="">
				<span>Internal Team</span>
				<span>and Invoincing Managment</span>
			</a>

			<a href="/how-it-works#customize" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/settings-7-128.png" alt="">
				<span>In-Depth Product</span>
				<span>Customization Options</span>
			</a>

			<a href="/how-it-works#manage" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/search-2-128.png" alt="">
				<span>Manage & Review Products</span>
			</a>
			<a href="/how-it-works#integration" class="feature-item">
				<img class="feature-item-icon" src="/assets/icons/plug-128.png" alt="">
				<span>Simple Technician </span>
				<span>& Studio Integration</span>
			</a>

		</div>

	</div>

</div>

<div class="layout-section dark">

	<div class="centered-container">

		<h2 class="steps-title"> <b>Premium Media</b> in Three Easy Steps </h2>

		<div class="steps">

			<div class="steps-column">
				<div class="step-num">1</div>
				<div>
					<img class="steps-img align-right slide-in" src="/assets/macbook-step1.png" alt="">
				</div>
				<div class="step-title">Select Your Media</div>
				<div>Choose from our comprehensive list <br/> of premium media options</div>
			</div>

			<div class="steps-column" style="text-align: center;">
				<div class="step-num">2</div>
				<div>
					<img class="steps-img align-right slide-in" src="/assets/macbook-step2.png" alt="">
				</div>
				<div class="step-title">Schedule & Place Order</div>
				<div>Schedule with Ease and Avoid <br/> the Redundant Back & Forths</div>
			</div>

			<div class="steps-column">
				<div class="step-num">3</div>
				<div>
					<img class="steps-img align-right slide-in" src="/assets/macbook-step3.png" alt="">
				</div>
				<div class="step-title">Review & Manage</div>
				<div>Track Your Progress & Easily Manage <br/>Media in your Media Portal</div>
			</div>

		</div>

		<div class="btns">
			<button onclick="openContactModal()">
				Schedule a Demo
			</button>
		</div>

	</div>

</div>

<div class="layout-section">

	<div class="centered-container">
		<h2>
			Provide Your Team with all of the Best Visual Media Options <br/>
			from our National Team of Certified Technicians
		</h2>
	</div>

	<div class="centered-container no-padding">
		<uc1:MediaTypes runat="server" id="MediaTypes"/>
	</div>

</div>

<div class="layout-section">
	<div class="centered-container">

		<h2>
			Trusted by Leaders in the Industry
		</h2>

		<div id="clientsUI">
			<div>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/forestHill.png?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/colliers.png?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/royalLepage.jpg?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/harveyKalles.jpg?raw=true"/>
				<img src="/assets/cushman.jpg"/>
			</div>
			<div>
				<img src="/assets/bentall.jpg"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/blueElephant.png?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/bosley.jpg?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/century21.png?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/kw.png?raw=true"/>
			</div>
			<div>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/kw.png?raw=true"/>
				<img src="/assets/quadreal-logo.jpeg"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/chestertons.png?raw=true"/>
				<img src="https://github.com/RyanKendrick/listbuddyMockup/blob/master/media-homepage/clientLogos/harveyKalles.jpg?raw=true"/>
				<img src="/assets/ay-logo.png"/>
			</div>
		</div>

	</div>
</div>

<div class="layout-section dark">

	<div class="centered-container">

		<h2>Testimonials</h2>

		<div id="quotesUI">
			<div>
				<div>
					<div class="client-quote">
						"The VR Listing team is extremely responsive,
						dependable and will do anything to ensure their clients are happy.
						It has been a pleasure growing our business with VR Listing."
					</div>
					<div class="client-name">- Shen Vijayananthan</div>
					<div class="client-title">Marketing Manager Quadreal</div>
				</div>
			</div>
			<div>
				<div>
					<div class="client-quote">
						"The VR Listing team have worked with us on several tight timelines
						and the result is always flawless. The platform makes ordering and
						scheduling a breeze and they are always keen to learn how we want things done."
					</div>
					<div class="client-name">- Krishna Patel</div>
					<div class="client-title">Cushman & Wakefield</div>
				</div>
			</div>
			<div>
				<div>
					<div class="client-quote">
						"The VR Listing team are true professionals in every sense of the words.
						They are responsive, reliable, fast, flexible, and accommodating. VR’s platform
						for ordering photos/videos is easy to use - ordering is as simple as a few clicks.
						Where it truly shines is our photos are stored online for easy access as well as
						space-saving. Happy to have such great partners to service our photography and video needs."
					</div>
					<div class="client-name">- Men Lee</div>
					<div class="client-title">Senior Marketing Manager, Studio, Colliers International</div>
				</div>
			</div>
			<div>
				<div>
					<div class="client-quote">
						"We have worked with VR Listing at a brokerage level for over two years now.
						They have provided an exceptional level of service and attention to detail
						when dealing with our team. Their web platform has allowed our marketing
						department to save time and be more organized."
					</div>
					<div class="client-name">- Jeremy Finkelstein</div>
					<div class="client-title">Marketing Manager, Harvey Kalles Real Estate</div>
				</div>
			</div>
			<div>
				<div>
					<div class="client-quote">
						"VR Listing has completely elevated not only our photography but all
						marketing across our portfolio. Their photography and 3D tours are consistent
						across the country and with the implementation of their new portal,
						booking shoots has never been easier."
					</div>
					<div class="client-name">- Alexandra Foggetti</div>
					<div class="client-title">Marketing Specialist, Residential , Bentall Green Oak</div>
				</div>
			</div>
		</div>

	</div>
</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">

	<script>
		(() => {
			new SlidesRotator('screenshotsUI');
			new SlidesRotator('clientsUI');
			new SlidesRotator('quotesUI');
		})();
	</script>

</asp:Content>