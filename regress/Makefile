SRC != echo *.query

all:

.for _b in ${SRC:S/.query$//}

RES += ${_b}.result

${_b}.result: ${_b}.query Makefile
	@echo "==> ${_b}.result"
	@(cat ${_b}.query;echo done.) | perl ../chat -o > .${_b}.result && \
		mv .${_b}.result ${_b}.result

.endfor

results: ${RES}
