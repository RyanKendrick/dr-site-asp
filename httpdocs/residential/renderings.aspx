<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="renderings.aspx.cs" Inherits="DigitalResolution_Marketing.residential.renderings" %>

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
							thumbUrl: "/assets/renderings/res/web/01.jpg",
							largeUrl: "/assets/renderings/res/full/01.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/02.jpg",
							largeUrl: "/assets/renderings/res/full/02.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/03.jpg",
							largeUrl: "/assets/renderings/res/full/03.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/04.jpg",
							largeUrl: "/assets/renderings/res/full/04.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/05.jpg",
							largeUrl: "/assets/renderings/res/full/05.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/06.jpg",
							largeUrl: "/assets/renderings/res/full/06.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/07.jpg",
							largeUrl: "/assets/renderings/res/full/07.jpg"
						},
						{
							thumbUrl: "/assets/renderings/res/web/08.jpg",
							largeUrl: "/assets/renderings/res/full/08.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>