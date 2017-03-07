accessing - icons
anvilIcon
	"Private - Generated method"
	^ self icons
		at: #anvilIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self anvilIconContents readStream) ]