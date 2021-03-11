<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="3d-tours.aspx.cs" Inherits="DigitalResolution_Marketing.commercial._3d_tours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
		
		<div v-for="(item, index) in items">

			<div class="thumbnail-box">
				<a :href="`#img${index}`">
					<img class="grid-img" :src="item.thumbUrl" alt="Commercial Virtual Tour">
				</a>
			</div>

			<a href="#" class="lightbox" :id="`img${index}`">
				<iframe width='853' height='480'
					:src="item.modelUrl"
					frameborder='0' allowfullscreen allow='xr-spatial-tracking'>
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
							thumbUrl: "/assets/matterport-comm/01.png",
							modelUrl: "https://my.matterport.com/show/?m=oSuh42og5Zc"
						},
						{
							thumbUrl: "/assets/matterport-comm/02.png",
							modelUrl: "https://my.matterport.com/show/?m=2c5yE9PaGTs"
						},
						{
							thumbUrl: "/assets/matterport-comm/03.png",
							modelUrl: "https://my.matterport.com/show/?m=4PQPVrTa4fr"
						},
						{
							thumbUrl: "/assets/matterport-comm/04.png",
							modelUrl: "https://my.matterport.com/show/?m=9Zgo9JAVWU3"
						},
						{
							thumbUrl: "/assets/matterport-comm/05.png",
							modelUrl: "https://my.matterport.com/show/?m=6ZvdQtuXH5h"
						},
						{
							thumbUrl: "/assets/matterport-comm/06.png",
							modelUrl: "https://my.matterport.com/show/?m=h5kgWGsyCs5"
						},
						{
							thumbUrl: "/assets/matterport-comm/07.png",
							modelUrl: "https://my.matterport.com/show/?m=iojbf6AUzMs"
						},
						{
							thumbUrl: "/assets/matterport-comm/08.png",
							modelUrl: "https://my.matterport.com/show/?m=twuS3GU4AbP"
						},
						{
							thumbUrl: "/assets/matterport-comm/09.png",
							modelUrl: "https://my.matterport.com/show/?m=Eco8oCjC54w"
						}
					]
				}
			}
		});

	</script>

</asp:Content>