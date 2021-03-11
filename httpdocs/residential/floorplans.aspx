<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="floorplans.aspx.cs" Inherits="DigitalResolution_Marketing.residential.floorplans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
                
		<div v-for="(item, index) in items">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
					<img class="grid-img" :src="item.thumbUrl" alt="Real Estate Floor Plans">
				</a>
			</div>

			<a href="#" class="lightbox" :id="`img${index}`">
				<object :data="item.fileUrl" type="application/pdf" width="100%" height="100%"></object>
			</a>

		</div>		

	</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">
	
	<style scoped>
	.thumbnail-box {
		height: 30vh;
		width: 45vh;
		text-align: center;
	}

	.media-thumbs-grid img {
		box-shadow: 10px 10px 15px black;
		width: auto;
		height: 34vh;
	}
	</style>
	
	<script>
		new Vue({
			el: "#thumbs-grid",
			data() {
				return {
					items: [
						{
							thumbUrl: "/assets/floorplans/fp-1.jpg",
							fileUrl: "/assets/floorplans/pdfs/22edgecombe.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/mc-1.jpg",
							fileUrl: "/assets/floorplans/pdfs/22edgecombe-mc.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/fp-3.jpg",
							fileUrl: "/assets/floorplans/pdfs/215degrassi.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/mc-3.jpg",
							fileUrl: "/assets/floorplans/pdfs/215degrassi-mc.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/fp-4.jpg",
							fileUrl: "/assets/floorplans/pdfs/625avenue.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/mc-2.jpg",
							fileUrl: "/assets/floorplans/pdfs/625avenue-mc.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/21burkebrook.png",
							fileUrl: "/assets/floorplans/pdfs/21burkebrook.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/72lawton-mc.jpg",
							fileUrl: "/assets/floorplans/pdfs/72lawton-mc.pdf"
						},
						{
							thumbUrl: "/assets/floorplans/72lawton.jpg",
							fileUrl: "/assets/floorplans/pdfs/72lawton.pdf"
						}
					]
				}
			}
		});
	</script>

</asp:Content>