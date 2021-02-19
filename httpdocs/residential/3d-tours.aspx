<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="3d-tours.aspx.cs" Inherits="DigitalResolution_Marketing._3d_tours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
		
		<div v-for="(item, index) in items">

			<a :href="`#img${index}`">
				<img class="grid-img" :src="item.thumbUrl">
			</a>

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

	<script>

		new Vue({
			el: "#thumbs-grid",
			data() {
				return {
					items: [
						{
							thumbUrl: "/assets/matterport/38-oldyonge.png",
							modelUrl: "https://my.matterport.com/show/?m=Q1ENSFNEPge"
						},
						{
							thumbUrl: "/assets/matterport/barbados.png",
							modelUrl: "https://my.matterport.com/show/?m=oFUzPE6YZss"
						},
						{
							thumbUrl: "/assets/matterport/trump-3505.png",
							modelUrl: "https://my.matterport.com/show/?m=nLTzKTtFN6u"
						},
						{
							thumbUrl: "/assets/matterport/137alcorn.png",
							modelUrl: "https://my.matterport.com/show/?m=njChafMaenf"
						},
						{
							thumbUrl: "/assets/matterport/43hanna.png",
							modelUrl: "https://my.matterport.com/show/?m=v2AKe4V7MoG"
						},
						{
							thumbUrl: "/assets/matterport/72lawton.png",
							modelUrl: "https://my.matterport.com/show/?m=xjtC8PTJJYW"
						},
						{
							thumbUrl: "/assets/matterport/42parklane.png",
							modelUrl: "https://my.matterport.com/show/?m=wc8mB7UBvsK"
						},
						{
							thumbUrl: "/assets/matterport/311bay.png",
							modelUrl: "https://my.matterport.com/show/?m=py6cVn84ZLB"
						},
						{
							thumbUrl: "/assets/matterport/22easthaven.png",
							modelUrl: "https://my.matterport.com/show/?m=Qgd3eb8awV7"
						}
					]
				}
			}
		});

	</script>

</asp:Content>