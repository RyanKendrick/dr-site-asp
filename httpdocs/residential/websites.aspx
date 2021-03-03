<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="websites.aspx.cs" Inherits="DigitalResolution_Marketing.residential.websites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
		
		<div v-for="(item, index) in items">

			<a :href="item.url" target="_blank">
				<img class="grid-img" :src="item.thumbUrl">
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
							thumbUrl: "/assets/websites-res/res-website1.png",
							url: "http://570briarhill.com/"
						},
						{
							thumbUrl: "/assets/website.png",
							url: "http://www.72lawton.com/"
						},
						{
							thumbUrl: "/assets/websites-res/res-website2.png",
							url: "http://www.171chaplin.com/"
						},
						{
							thumbUrl: "/assets/websites-res/res-website3.png",
							url: "http://45charles5210.com/"
						},
						{
							thumbUrl: "/assets/websites-res/res-website4.png",
							url: "http://17zorra804.com/"
						},
						{
							thumbUrl: "/assets/websites-res/res-website5.png",
							url: "http://5mead.com/"
						}
					]
				}
			}
		});

	</script>

</asp:Content>