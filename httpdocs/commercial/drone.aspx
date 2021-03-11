<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="drone.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.drone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="media-thumbs-grid" id="thumbs-grid">
                
		<div v-for="(img, index) in imgs">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
					<img class="grid-img" :src="img.thumbUrl" alt="Commercial Aerial Drone Photography">
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
							thumbUrl: "/assets/drone-comm/001-thumb.jpg",
							largeUrl: "/assets/drone-comm/001.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/004-thumb.jpg",
							largeUrl: "/assets/drone-comm/004.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/013-thumb.jpg",
							largeUrl: "/assets/drone-comm/013.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/015-thumb.jpg",
							largeUrl: "/assets/drone-comm/015.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/016-thumb.jpg",
							largeUrl: "/assets/drone-comm/016.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/017-thumb.jpg",
							largeUrl: "/assets/drone-comm/017.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/019-thumb.jpg",
							largeUrl: "/assets/drone-comm/019.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/web/021.jpg",
							largeUrl: "/assets/drone-comm/full/021-full.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/web/023-web.jpg",
							largeUrl: "/assets/drone-comm/full/023.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/web/03.jpg",
							largeUrl: "/assets/drone-comm/full/03-full.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/web/04.jpg",
							largeUrl: "/assets/drone-comm/full/04-full.jpg"
						},
						{
							thumbUrl: "/assets/drone-comm/web/012-web.jpg",
							largeUrl: "/assets/drone-comm/full/012-full.jpg"
						}
					]
				}
			}
		});
	</script>

</asp:Content>