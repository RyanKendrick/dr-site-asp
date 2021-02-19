<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="plane-photography.aspx.cs" Inherits="DigitalResolution_Marketing.residential.plane_photography" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">

		<div v-for="(img, index) in imgs">

			<a :href="\`#img$\{index\}\`">
				<img class="grid-img" :src="img.thumbUrl">
			</a>

			<a href="#" class="lightbox" :id="\`img$\{index\}\`">
				<span :style="\`background-image: url('$\{img.largeUrl\}')\`"></span>
			</a>

		</div>
	</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">

	<script>

		new Vue({
			el: "#thumbs-grid",
			data() {
				return {
					imgs: [
						{
							thumbUrl: "/assets/plane-photos/web/1.jpg",
							largeUrl: "/assets/plane-photos/full/1f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/2.jpg",
							largeUrl: "/assets/plane-photos/full/2f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/3.jpg",
							largeUrl: "/assets/plane-photos/full/3f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/4.jpg",
							largeUrl: "/assets/plane-photos/full/4f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/5.jpg",
							largeUrl: "/assets/plane-photos/full/5f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/6.jpg",
							largeUrl: "/assets/plane-photos/full/6f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/7.jpg",
							largeUrl: "/assets/plane-photos/full/7f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/8.jpg",
							largeUrl: "/assets/plane-photos/full/8f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/9.jpg",
							largeUrl: "/assets/plane-photos/full/9f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/10.jpg",
							largeUrl: "/assets/plane-photos/full/10f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/11.jpg",
							largeUrl: "/assets/plane-photos/full/11f.jpg"
						},
						{
							thumbUrl: "/assets/plane-photos/web/12.jpg",
							largeUrl: "/assets/plane-photos/full/12f.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>