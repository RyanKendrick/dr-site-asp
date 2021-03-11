<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="photography.aspx.cs" Inherits="DigitalResolution_Marketing.residential.photography" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="media-thumbs-grid" id="thumbs-grid">

		<div v-for="(img, index) in imgs">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
					<img class="grid-img" :src="img.thumbUrl" alt="Real Estate Photography">
				</a>
			</div>
			
			<a href="#" class="lightbox" :id="`img${index}`">
				<span :style="`background-image: url('${img.largeUrl}')`"></span>
			</a>

		</div>
	</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">
	
	<style>
	.thumbnail-box {
		height: 30vh;
		width: 45vh;
	}
	</style>
	
	
	<script>

		new Vue({
			el: "#thumbs-grid",
			data() {
				return {
					imgs: [
						{
							thumbUrl: "/assets/kuba-web/01.jpg",
							largeUrl: "/assets/kuba-full/01.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/02.jpg",
							largeUrl: "/assets/kuba-full/02.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/03.jpg",
							largeUrl: "/assets/kuba-full/03.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/04.jpg",
							largeUrl: "/assets/kuba-full/04.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/05.jpg",
							largeUrl: "/assets/kuba-full/05.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/06.jpg",
							largeUrl: "/assets/kuba-full/06.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/07.jpg",
							largeUrl: "/assets/kuba-full/07.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/08.jpg",
							largeUrl: "/assets/kuba-full/08.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/09.jpg",
							largeUrl: "/assets/kuba-full/09.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/10.jpg",
							largeUrl: "/assets/kuba-full/10.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/11.jpg",
							largeUrl: "/assets/kuba-full/11.jpg"
						},
						{
							thumbUrl: "/assets/kuba-web/12.jpg",
							largeUrl: "/assets/kuba-full/12.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>