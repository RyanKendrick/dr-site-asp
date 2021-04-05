<%@ Page Title="" Language="C#" MasterPageFile="~/SubPage.master" AutoEventWireup="true" CodeBehind="how-it-works.aspx.cs" Inherits="DigitalResolution_Marketing.how_it_works" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<link href="/css/how-it-works.css" rel="stylesheet"/>

	<div class="layout-section dark">
		<div class="centered-container">

			<h2>
				A comprehensive web platform that helps schedule
				<br/>and manage your visual media at scale.
			</h2>
			
			<div id="order-steps" class="container-box">
				<img src="/assets/macbook-step2.png" alt="">
				<div>
					<h3>
						3-Step Ordering
					</h3>
					<p>
						Our scheduling platform can be up to 75% quicker and more effective than the traditional media studio booking process.
					</p>
				</div>
			</div>

			<div id="qa-assurance" class="container-box">
				<div>
					<h3>
						Product Quality<br/>
						Control & Assurance
					</h3>
					<p>
						Digital Resolution delivers premium products
						above industry standard so that your properties
						always stand out. Our certified technicians, post-edit
						team and customer approval process ensure your media
						is always consistent.
					</p>
				</div>
				<img class="align-left slide-in shadow" src="/assets/screenshots/revision-portal.gif" alt="">
			</div>

			<div id="scaleable" class="container-box">
				<img class="align-right slide-in" src="/assets/screenshots/scalability.png" alt="">
				<div>
					<h3>
						Platform Scalability
					</h3>
					<p>
						Our platform is built to accommodate any number of members
						regardless of their location. Our robust team of technicians
						ensure the products you need are available when you need them
						and wherever you need them.
					</p>
				</div>
			</div>

			<div id="notifications" class="container-box">
				<div>
					<h3>
						Real-Time Notifications
					</h3>
					<p>
						Our real-time notification system helps you track and
						manage your orders from start to finish. Stay in touch
						with our technicians throughout the entire process.
					</p>
				</div>
				<img class="align-left slide-in" src="/assets/screenshots/notifications-gif.gif" alt="">
			</div>

			<div id="internal" class="container-box">
				<img class="shadow align-right slide-in" src="/assets/screenshots/orders-page.png" alt="">
				<div>
					<h3>
						Internal Team<br/>
						and Invoincing Managment
					</h3>
					<p>
						Our enterprise solution provides a large list
						of internal management tools:
						<ul>
							<li>
								Admin profiles make it easy to add team members
								and manage their projects.
							</li>
							<li>
								Invoicing options lets your team order with ease
								and avoid the hassle of payment processing.
							</li>
							<li>
								Order approval system allows your admins to price the products
								or packages that require approval before ordering.
							</li>
							<li>Add collaborators on any project to keep everyone in the loop</li>
						</ul>
					</p>
				</div>
			</div>

			<div id="customize" class="container-box">
				<div>
					<h3>
						In-Depth Product<br/>
						Customization Options
					</h3>
					<p>
						Our enterprise solutions include custom tailored packages and
						pricing options to make sure you and your team are properly
						equipped. Our platform can also be company branded allowing
						for a more personalized experience.
					</p>
				</div>
				<img class="shadow align-left slide-in" src="/assets/screenshots/customize.png" alt="">
			</div>

			<div id="manage" class="container-box">
				<img class="shadow align-right slide-in" src="/assets/review-media.gif" alt="">
				<div>
					<h3>
						Manage & Review Products
					</h3>
					<p>
						Once your media is delivered, review the project and provide
						feedback or request changes. All projects can be managed and
						updated in your personal media platform.
					</p>
				</div>
			</div>

			<div id="integration" class="container-box">
				<div>
					<h3>
						Simple Technician<br/>
						& Studio Integration
					</h3>
					<p>
						Our integrated technician solution means in-house media providers
						can be easily added to your platform media options.
					</p>
				</div>
				<img class="align-left slide-in" src="/assets/screenshots/integration.png" alt="">
			</div>

		</div>

		<div class="btns">

			<button onclick="openContactModal()">
				Schedule a Demo
			</button>

		</div>

		<div id="contactModal" class="contact-modal">
			<div class="modal-content">
				<span class="close">&times;</span>
				<contact-modal></contact-modal>
			</div>
		</div>

	</div>

</asp:Content>