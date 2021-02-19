<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="floorplans.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.floorplans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
                
		<div v-for="(item, index) in items">

			<a :href="`#img${index}`">
				<img class="grid-img" :src="item.thumbUrl">
			</a>

			<a href="#" class="lightbox" :id="`img${index}`">
				<span :style="`background-image: url('${item.largeUrl}')`"></span>
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
					items: [
						{
							thumbUrl: "/assets/floorplans/comm/482ontario.jpg",
							largeUrl: "/assets/floorplans/comm/482ontario.jpg"
						},
						{
							thumbUrl: "/assets/floorplans/comm/482ontario2.jpg",
							largeUrl: "/assets/floorplans/comm/482ontario2.jpg"
						},
						{
							thumbUrl: "/assets/floorplans/comm/482ontario3.jpg",
							largeUrl: "/assets/floorplans/comm/482ontario3.jpg"
						},
						{
							thumbUrl: "/assets/floorplans/comm/482ontario4.jpg",
							largeUrl: "/assets/floorplans/comm/482ontario4.jpg"
						},
						{
							thumbUrl: "/assets/floorplans/comm/482ontario5.jpg",
							largeUrl: "/assets/floorplans/comm/482ontario5.jpg"
						}
					]
				}
			}
		});
	</script>

</asp:Content>