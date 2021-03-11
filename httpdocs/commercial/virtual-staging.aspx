<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="virtual-staging.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.virtual_staging" %>

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

			<img class="staging-img" alt="Commercial Virtual Staging" slot="after" :src="item.url1"/>
			<img class="staging-img" alt="Commercial Virtual Staging" slot="before" :src="item.url2"/>

		</img-comparison-slider>

	</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">
	
	<style scoped>
		.thumbnail-box {
			height: 30vh;
			width: 45vh;
		}
	
		.media-thumbs-grid img {
			box-shadow: 10px 10px 15px black;
			height: 100%;
		}
	</style>
	
	<script>

		new Vue({
			el: "#thumbs-grid",
			data() {
				return {
					items: [
						{
							url1: "/assets/staging/comm/1before.jpg",
							url2: "/assets/staging/comm/1after.jpg"
						},
						{
							url1: "/assets/wix-comm-staging/before/01.jpg",
							url2: "/assets/wix-comm-staging/after/01.jpg"
						},
						{
							url1: "/assets/wix-comm-staging/before/02.jpg",
							url2: "/assets/wix-comm-staging/after/02.jpg"
						},
						{
							url1: "/assets/wix-comm-staging/before/03.jpg",
							url2: "/assets/wix-comm-staging/after/03.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>