<%@ Page Title="" Language="C#" MasterPageFile="~/Media.master" AutoEventWireup="true" CodeBehind="renos.aspx.cs" Inherits="DigitalResolution_Marketing.commercial.renos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<script
		type="module"
		src="https://unpkg.com/img-comparison-slider@3/dist/component/component.esm.js"></script>
	<script
		nomodule=""
		src="https://unpkg.com/img-comparison-slider@3/dist/component/component.js"></script>
	<link
		rel="stylesheet"
		href="https://unpkg.com/img-comparison-slider@3/dist/collection/styles/initial.css"/>

	<div class="media-thumbs-grid" id="thumbs-grid">

		<img-comparison-slider
			v-for="item in items">

			<img class="staging-img" slot="before" :src="item.url1"/>
			<img class="staging-img" slot="after" :src="item.url2"/>

		</img-comparison-slider>

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
							url1: "/assets/staging/comm/1before.jpg",
							url2: "/assets/staging/comm/1after.jpg"
						},
						{
							url1: "/assets/staging/comm/2before.jpg",
							url2: "/assets/staging/comm/2after.jpg"
						},
						{
							url1: "https://static.wixstatic.com/media/a0f085_25d0fd4fee7744e69b6672652cf35d32~mv2_d_5472_3648_s_4_2.jpg",
							url2: "https://static.wixstatic.com/media/a0f085_8ea272d7eee24d14a5eee78ff8871679~mv2_d_5000_3330_s_4_2.jpg"
						},
						{
							url1: "https://static.wixstatic.com/media/42a31f_08a459cb84f64020a922a5827c5de3c6~mv2_d_1900_1267_s_2.jpg",
							url2: "https://static.wixstatic.com/media/42a31f_c78538a4f25247829b00fff10b721c30~mv2_d_1900_1267_s_2.jpg"
						},
						{
							url1: "https://static.wixstatic.com/media/a0f085_e9230008384a41c8bbcb2bf38c50b510~mv2_d_3498_2331_s_2.jpg",
							url2: "https://static.wixstatic.com/media/a0f085_634e06c4253e4699a0684a3ed211075e~mv2_d_2048_1365_s_2.jpg"
						},
						{
							url1: "https://static.wixstatic.com/media/a0f085_e9230008384a41c8bbcb2bf38c50b510~mv2_d_3498_2331_s_2.jpg",
							url2: "https://static.wixstatic.com/media/a0f085_634e06c4253e4699a0684a3ed211075e~mv2_d_2048_1365_s_2.jpg"
						},
						{
							url1: "https://static.wixstatic.com/media/a0f085_e9230008384a41c8bbcb2bf38c50b510~mv2_d_3498_2331_s_2.jpg",
							url2: "https://static.wixstatic.com/media/a0f085_634e06c4253e4699a0684a3ed211075e~mv2_d_2048_1365_s_2.jpg"
						},
						{
							url1: "https://static.wixstatic.com/media/a0f085_e9230008384a41c8bbcb2bf38c50b510~mv2_d_3498_2331_s_2.jpg",
							url2: "https://static.wixstatic.com/media/a0f085_634e06c4253e4699a0684a3ed211075e~mv2_d_2048_1365_s_2.jpg"
						}
					]
				}
			}
		});

	</script>

</asp:Content>