all: extract update
extract:
	find ../templates |egrep '\.xml' | xargs i18nfool-extract
update: de/LC_MESSAGES/CiderWebmail.mo en/LC_MESSAGES/CiderWebmail.mo
de/LC_MESSAGES/CiderWebmail.po: CiderWebmail.pot
	i18nfool-update
en/LC_MESSAGES/CiderWebmail.po: CiderWebmail.pot
	i18nfool-update
de/LC_MESSAGES/CiderWebmail.mo: de/LC_MESSAGES/CiderWebmail.po
	i18nfool-build
en/LC_MESSAGES/CiderWebmail.mo: en/LC_MESSAGES/CiderWebmail.po
	i18nfool-build
