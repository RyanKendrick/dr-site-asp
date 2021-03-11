<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="photography.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.photography" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="media-thumbs-grid" id="thumbs-grid">
                          
		<div v-for="(img, index) in imgs">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
					<img class="grid-img" :src="img.thumbUrl" alt="Commercial Real Estate Photography">
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
							thumbUrl: "/assets/comm-photos/01-web.jpg",
							largeUrl: "/assets/comm-photos/01.jpg"
						},
						{
							thumbUrl: "/assets/photos-comm/010-thumb.jpg",
							largeUrl: "/assets/photos-comm/010.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/01.jpg",
							largeUrl: "/assets/wix-comm-photo/full/01.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/02.jpg",
							largeUrl: "/assets/wix-comm-photo/full/02.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/03.jpg",
							largeUrl: "/assets/wix-comm-photo/full/03.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/04.jpg",
							largeUrl: "/assets/wix-comm-photo/full/04.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/05.jpg",
							largeUrl: "/assets/wix-comm-photo/full/05.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/06.jpg",
							largeUrl: "/assets/wix-comm-photo/full/06.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/07.jpg",
							largeUrl: "/assets/wix-comm-photo/full/07.jpg"
						},
						{
							thumbUrl: "/assets/wix-comm-photo/thumb/08.jpg",
							largeUrl: "/assets/wix-comm-photo/full/08.jpg"
						},
						{
							thumbUrl: "/assets/photos-comm/web/060.jpg",
							largeUrl: "/assets/photos-comm/060-full.jpg"
						},
						{
							thumbUrl: "/assets/photos-comm/web/061.jpg",
							largeUrl: "/assets/photos-comm/061-full.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>