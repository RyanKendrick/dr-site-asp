<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="virtual-staging.aspx.cs" Inherits="DigitalResolution_Marketing.residential.virtual_staging" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<script
		type="module"
		src="https://unpkg.com/img-comparison-slider@3/dist/component/component.esm.js"></script>
	<script
		nomodule=""
		src="https://unpkg.com/img-comparison-slider@3/dist/component/component.js"></script>
	<link
		rel="stylesheet"
		href="https://unpkg.com/img-comparison-slider@3/dist/collection/styles/initial.css"/>
	
	<div class="media-thumbs-grid" id="thumbs-grid">

		<img-comparison-slider
			v-for="item in items">

			<img class="staging-img" slot="after" :src="item.url1"/>
			<img class="staging-img" slot="before" :src="item.url2"/>

		</img-comparison-slider>

	</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">
	
	<script>

		new Vue({
			el: "#thumbs-grid",
			data() {
				return {
					items: [
						{
							url1: "/assets/staging/res/1before.jpg",
							url2: "/assets/staging/res/1after.jpg"
						},
						{
							url1: "/assets/staging/res/2before.jpg",
							url2: "/assets/staging/res/2after.jpg"
						},
						{
							url1: "/assets/staging/res/3before.jpg",
							url2: "/assets/staging/res/3after.jpg"
						},
						{
							url1: "/assets/staging/res/4before.jpg",
							url2: "/assets/staging/res/4after.jpg"
						},
						{
							url1: "/assets/staging/res/5before.jpg",
							url2: "/assets/staging/res/5after.jpg"
						},
						{
							url1: "/assets/staging/res/6before.jpg",
							url2: "/assets/staging/res/6after.jpg"
						},
						{
							url1: "/assets/staging/res/7before.jpg",
							url2: "/assets/staging/res/8after.jpg"
						},
						{
							url1: "/assets/staging/res/8before.jpg",
							url2: "/assets/staging/res/7after.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>