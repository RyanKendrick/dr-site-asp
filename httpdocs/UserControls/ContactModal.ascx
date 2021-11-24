<%@ Control Language="C#" %>

<script src="https://www.google.com/recaptcha/api.js"></script>

<ns-modal
	id="contactModalNew"
	onhide="contactVue.reset()"
	>

	<div id="contact-container" class="contact-container" v-cloak>
	
	<h2>
		Get in Touch
	</h2>
		<form
			v-if="state==='ready'"
			action="./php/mailer.php"
			method="POST"
			>

			<div class="form-row">
				<div class="form-column">
					<label for="fname">First Name</label>
					<input
						type="text"
						id="fname"
						name="fname"
						required
						v-model="formData.firstName"/>
				</div>
				<div class="form-column">
					<label for="lname">Last Name</label>
					<input
						type="text"
						id="lname"
						name="lname"
						required
						v-model="formData.lastName"/>
				</div>
			</div>

			<div class="form-row">
				<div class="form-column">
					<label for="subject">Subject</label>
					<select
						id="subject"
						name="subject"
						required
						v-model="formData.subject">
						<option value="book-demo">Book a Demo</option>
						<option value="tech-support">Technical Support</option>
						<option value="partnership">Partnership Inquiry</option>
						<option value="other">Other</option>
					</select>
				</div>
				<div class="form-column">
					<label for="company">Brokerage</label>
					<input
						type="text"
						id="company"
						name="company"
						placeholder=""
						v-model="formData.company"/>
				</div>
			</div>

			<div class="form-row">
				<div class="form-column">
					<label for="phone">Phone Number</label>
					<input
						type="text"
						id="phone"
						name="name"
						placeholder="Phone Number"
						required
						v-model="formData.phone"/>
				</div>
				<div class="form-column">
					<label for="phone">E-Mail</label>
					<input
						type="text"
						id="email"
						name="name"
						placeholder="E-Mail"
						required
						v-model="formData.email"/>
				</div>
			</div>

			<label for="subject">Message</label>
			<textarea
				class="textarea"
				id="message"
				name="message"
				placeholder=""
				required
				v-model="formData.message"
				></textarea>

		

			<div class="btns">

				<button data-modal-hide-btn>
					Cancel
				</button>

				<button
					@click="send()">
					Send
				</button>

			</div>

		</form>
		
		<div
			v-if="state==='sending'"
			style="text-align: center"
			>
			
			<h3 style="text-align: center">
				Sending...
			</h3>

		</div>
		
		<div
			v-if="state==='sent'"
			style="text-align: center"
			>
			
			<h3 style="text-align: center">
				Sent!
			</h3>

			You can close this dialog now.

			<div class="btns">

				<button data-modal-hide-btn>
					Close
				</button>

			</div>

		</div>
	</div>

</ns-modal>

<script>
	var contactVue = new Vue({
		el: '#contact-container',
		data() {
			return {
				state: 'ready',
				formData: {
					firstName: '',
					lastName: '',
					subject: '',
					company: '',
					phone: '',
					email: '',
					message: ''
				}
			}
		},
		methods: {
			async send() {
				var formValid = NSphereForm.validateElementsIn('contact-container');
				if (!formValid) {
					return;
				}

				this.state = 'sending';

				await NSphereFetch.post(
					'/api/contact/send',
					this.formData
				);

				this.state = 'sent';
			},
			reset() {
				this.formData = {
					firstName: '',
					lastName: '',
					subject: '',
					company: '',
					phone: '',
					email: '',
					message: ''
				};
				this.state = 'ready';
			}
		}
	});
</script>