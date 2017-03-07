accessing - icons
necronomiconIcon
	"Private - Generated method"
	^ self icons
		at: #necronomiconIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self necronomiconIconContents readStream) ]