<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="renderings.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.renderings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
		
		<div v-for="(img, index) in imgs">

			<a :href="`#img${index}`">
				<img class="grid-img" :src="img.thumbUrl">
			</a>

			<a href="#" class="lightbox" :id="`img${index}`">
				<span :style="`background-image: url('${img.largeUrl}')`"></span>
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
							thumbUrl: "/assets/renderings/comm/web/01.jpg",
							largeUrl: "/assets/renderings/comm/full/01.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/02.jpg",
							largeUrl: "/assets/renderings/comm/full/02.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/03.jpg",
							largeUrl: "/assets/renderings/comm/full/03.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/04.jpg",
							largeUrl: "/assets/renderings/comm/full/04.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/05.jpg",
							largeUrl: "/assets/renderings/comm/full/05.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/06.jpg",
							largeUrl: "/assets/renderings/comm/full/06.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/07.jpg",
							largeUrl: "/assets/renderings/comm/full/07.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/08.jpg",
							largeUrl: "/assets/renderings/comm/full/08.jpg"
						},
						{
							thumbUrl: "/assets/renderings/comm/web/09.jpg",
							largeUrl: "/assets/renderings/comm/full/09.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>