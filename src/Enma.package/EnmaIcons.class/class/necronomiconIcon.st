accessing - icons
necronomiconIcon
	"Private - Generated method"

	^ self icons
		at: #necronomiconIcon
		ifAbsentPut: [ Form
				fromBinaryStream: self necronomiconIconContents base64Decoded readStream ]