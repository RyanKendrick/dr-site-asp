<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="videography.aspx.cs" Inherits="DigitalResolution_Marketing.residential.videography" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
		
		<div v-for="(item, index) in items">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
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
							thumbUrl: "/assets/videos/res/42parklane.png",
							videoUrl: "https://www.youtube.com/embed/ppWskXroHiQ"
						},
						{
							thumbUrl: "/assets/videos/res/165lisgar.png",
							videoUrl: "https://www.youtube.com/embed/D1I_r3B8IfE"
						},
						{
							thumbUrl: "/assets/videos/res/633huron.png",
							videoUrl: "https://www.youtube.com/embed/vbSydQmzWoQ"
						},
						{
							thumbUrl: "/assets/videos/res/117highland.png",
							videoUrl: "https://www.youtube.com/embed/2Bdp1ZvH8qI"
						},
						{
							thumbUrl: "/assets/videos/res/296elm.png",
							videoUrl: "https://www.youtube.com/embed/5ANkyVHmXus"
						},
						{
							thumbUrl: "/assets/videos/res/76donwoods.png",
							videoUrl: "https://www.youtube.com/embed/5FxXr75JcO4"
						},
						{
							thumbUrl: "/assets/videos/res/1highland.png",
							videoUrl: "https://www.youtube.com/embed/o2Yhn_qhlYE"
						},
						{
							thumbUrl: "/assets/videos/res/24browside.png",
							videoUrl: "https://www.youtube.com/embed/dh6gKA3zZKQ"
						}
					]
				}
			}
		});

	</script>

</asp:Content>