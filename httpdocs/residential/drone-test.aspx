<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="drone.aspx.cs" Inherits="DigitalResolution_Marketing.residential.drone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">

		<div v-for="(img, index) in imgs">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
					<img class="grid-img" :src="img.thumbUrl">
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
							thumbUrl: "/assets/drone-res/web/30watson.jpg",
							largeUrl: "/assets/drone-res/full/30watson-full.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/74athol.jpg",
							largeUrl: "/assets/drone-res/full/74athol.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/106kay.jpg",
							largeUrl: "/assets/drone-res/full/106kay.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/118godolphin.jpg",
							largeUrl: "/assets/drone-res/full/118godolphin.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/171chaplin.jpg",
							largeUrl: "/assets/drone-res/full/171chaplin-full.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/winter-web.jpg",
							largeUrl: "/assets/drone-res/full/winter.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/004-web.jpg",
							largeUrl: "/assets/drone-res/full/004.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/006-web.jpg",
							largeUrl: "/assets/drone-res/full/006.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/012-web.jpg",
							largeUrl: "/assets/drone-res/full/012.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/014-web.jpg",
							largeUrl: "/assets/drone-res/full/014.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/016-web.jpg",
							largeUrl: "/assets/drone-res/full/016.jpg"
						},
						{
							thumbUrl: "/assets/drone-res/web/017-web.jpg",
							largeUrl: "/assets/drone-res/full/017.jpg"
						}
					]
				}
			}
		});
	</script>

</asp:Content>