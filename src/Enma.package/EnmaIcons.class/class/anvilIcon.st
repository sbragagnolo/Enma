accessing - icons
anvilIcon
	"Private - Generated method"

	^ self icons
		at: #anvilIcon
		ifAbsentPut: [ Form
				fromBinaryStream: self anvilIconContents base64Decoded readStream ]