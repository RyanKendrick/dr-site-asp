<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="videography.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.videography" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
		
		<div v-for="(item, index) in items">

			<div class="thumbnail-box">
				<a :href="`#img`">
					<img class="grid-img" :src="item.thumbUrl">
				</a>
			</div>

			<a href="#" class="lightbox" :id="`img${index}`">
				<iframe width="420" height="315"
					:src="item.videoUrl">
				</iframe>
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
					items: [
						{
							thumbUrl: "/assets/videos/comm/207queensquay.png",
							videoUrl: "https://www.youtube.com/embed/kMNr-wNH-wo"
						},
						{
							thumbUrl: "/assets/videos/comm/6870claremont.png",
							videoUrl: "https://www.youtube.com/embed/ro5j-r5QjGU"
						},
						{
							thumbUrl: "/assets/videos/comm/20490porterland.png",
							videoUrl: "https://www.youtube.com/embed/11sMIcs3Mh4"
						},
						{
							thumbUrl: "/assets/videos/comm/20westbridge.png",
							videoUrl: "https://www.youtube.com/embed/R-O29NO9XKQ"
						},
						{
							thumbUrl: "/assets/videos/comm/1950meadowvale.png",
							videoUrl: "https://www.youtube.com/embed/0vxDMsvIcIE"
						},
						{
							thumbUrl: "/assets/videos/comm/450evans.png",
							videoUrl: "https://www.youtube.com/embed/VCHVqx2MFoE"
						},
						{
							thumbUrl: "/assets/videos/comm/taunton.png",
							videoUrl: "https://www.youtube.com/embed/rii4dOU3O2k"
						},
						{
							thumbUrl: "/assets/videos/comm/135yorkville.png",
							videoUrl: "https://www.youtube.com/embed/-Aer8djIZdI"
						}
					]
				}
			}
		});

	</script>

</asp:Content>