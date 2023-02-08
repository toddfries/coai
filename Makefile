PARTIES += REP:Republican
PARTIES += DEM:Democrat
PARTIES += LIB:Liberal
PARTIES += CNS:Conservative
PARTIES += LIBT:Libertarian
PARTIES += GRN:Green
PARTIES += CNST:Constitution
PARTIES += REF:Reform
PARTIES += SOC:Socialist
PARTIES += WRK:WorkingFamilies
PARTIES += IND:Independence
PARTIES += AME:American

all:

models.json: models
	sh ./models > .models.json && mv .models.json models.json

.for _v in ${PARTIES}
. for _name _party in ${_v:S/:/ /}

prologs/${_party}: political.template
	sed "s/%name%/${_name}/g;s/%party%/${_party}/g" political.template > \
		prologs/${_party}

ALLPARTIES += prologs/${_party}
. endfor
.endfor

parties: ${ALLPARTIES}
