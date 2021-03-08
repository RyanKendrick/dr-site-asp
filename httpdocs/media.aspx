<%@ Page Title="" Language="C#" MasterPageFile="~/SubPage.master" AutoEventWireup="true" CodeBehind="media.aspx.cs" Inherits="DigitalResolution_Marketing.media" %>

<%@ Register Src="~/UserControls/MediaTypes.ascx"
TagPrefix="uc1" TagName="MediaTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="layout-section dark">
		<div class="centered-container">
			<h2>Stunning Visuals to Make Sure </br>Your Listing/Asset Stands Out</h2>

			<div class="media-blurb">
				<b>Every team is unique in their needs and requirements.</b>
				<br/> Our platform allows you to pick and choose your own
				<br/> custom suite of premium visual media products.
			</div>
		</div>

		<div class="centered-container no-padding">
			<uc1:MediaTypes runat="server" ID="MediaTypes"/>
		</div>

		<div class="centered-container">
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

	</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">

</asp:Content>