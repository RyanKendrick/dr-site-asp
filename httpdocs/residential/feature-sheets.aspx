<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="feature-sheets.aspx.cs" Inherits="DigitalResolution_Marketing.residential.feature_sheets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="media-thumbs-grid" id="thumbs-grid">
                
		<div v-for="(item, index) in items">

			<a :href="`#img${index}`">
				<img class="grid-img" :src="item.thumbUrl" alt="Real Estate Feature Sheets">
			</a>

			<a href="#" class="lightbox" :id="`img${index}`">
				<object :data="item.fileUrl" type="application/pdf" width="100%" height="100%"></object>
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
							thumbUrl: "/assets/feature-sheets/indiangrove-ss.jpg",
							fileUrl: "/assets/feature-sheets/indiangrove.pdf"
						},
						{
							thumbUrl: "/assets/feature-sheets/10caperol-ss.jpg",
							fileUrl: "/assets/feature-sheets/10caperol.pdf"
						},
						{
							thumbUrl: "/assets/feature-sheets/1105saginaw-ss.jpg",
							fileUrl: "/assets/feature-sheets/1105saginaw.pdf"
						},
						{
							thumbUrl: "/assets/feature-sheets/64oldforest-ss.jpg",
							fileUrl: "/assets/feature-sheets/64oldforest.pdf"
						},
						{
							thumbUrl: "/assets/feature-sheets/59glenforest-ss.jpg",
							fileUrl: "/assets/feature-sheets/59glenforest.pdf"
						},
						{
							thumbUrl: "/assets/feature-sheets/8bloom-ss.jpg",
							fileUrl: "/assets/feature-sheets/8bloom.pdf"
						},
						{
							thumbUrl: "/assets/feature-sheets/83redpath-ss.jpg",
							fileUrl: "/assets/feature-sheets/83redpath.pdf"
						}
					]
				}
			}
		});
	</script>

</asp:Content>