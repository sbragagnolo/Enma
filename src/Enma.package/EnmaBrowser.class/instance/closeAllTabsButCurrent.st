protocol
closeAllTabsButCurrent
	(manager tabs select: [ :t | t isNotNil and: [ t ~= manager selectedTab ] ]) do: [ :t | manager removeTab: t ]