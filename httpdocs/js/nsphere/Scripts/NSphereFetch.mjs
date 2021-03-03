//Updated 2020Sep24. Added "put" and "del" methods.

export default class NSphereFetch {
	static get(url) {
		return fetch(url).then(res => NSphereFetch.returnChain(res));
	}

	static post(url, json, signal = null) {
		var options = {
			method: 'POST',
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
			body: JSON.stringify(json)
		};

		if (signal) {
			options.signal = signal;
		}

		return fetch(
				url,
				options
			)
			.then(res => NSphereFetch.returnChain(res));
	}

	static postFiles(url, files) {
		var formData = new FormData();

		for (let i = 0; i < files.length; i++) {

			let file = files[i];

			formData.append(
				`file_${i}`,
				file,
				file.name
			);
		}

		return NSphereFetch.postFormData(url, formData);
	}

	static postFormData(url, formData) {
		return fetch(
				url,
				{
					method: 'POST',
					body: formData
				})
			.then(res => NSphereFetch.returnChain(res));
	}

	static put(url, data) {
		return fetch(
				url,
				{
					method: 'PUT',
					headers: {
						'Content-Type': 'application/json'
					},
					body: JSON.stringify(data)
				}
			)
			.then(res => NSphereFetch.returnChain(res));
	}

	static del(url, data) {
		return fetch(
				url,
				{
					method: 'DELETE',
					headers: {
						'Content-Type': 'application/json'
					},
					body: JSON.stringify(data)
				}
			)
			.then(res => NSphereFetch.returnChain(res));
	}

	static returnChain(res) {
		//return res.ok ? res.json() : Promise.reject(res);

		return res.ok
			? (res.text().then((text) => {
				return text ? JSON.parse(text) : {};
			}))
			: Promise.reject(res);
	}
}

window.NSphereFetch = NSphereFetch;