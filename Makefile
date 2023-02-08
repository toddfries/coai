all:

models.json: models
	sh ./models > .models.json && mv .models.json models.json

.for _v in Rep:Republican Dem:Democrat Lib:Liberal
. for _name _party in ${_v:S/:/ /}

prologs/${_party}: political.template
	sed "s/%name%/${_name}/g;s/%party%/${_party}/g" political.template > \
		prologs/${_party}

ALLPARTIES += prologs/${_party}
. endfor
.endfor

parties: ${ALLPARTIES}
