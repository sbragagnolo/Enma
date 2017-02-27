protocol
closeAllTabs
	(manager tabs select: #isNotNil) do: [ :t | manager removeTab: t ]