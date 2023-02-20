SRC != echo *.query

all:

.for _b in ${SRC:S/.query$//}
. for _t in 1 5 9

RES += 0.${_t}/${_b}.result

0.${_t}/${_b}.result: ${_b}.query Makefile ../aichat
	@echo "==> 0.${_t}/${_b}.result"
	@stime="$$((RANDOM%5)).$$((RANDOM%10))";\
		echo 0.${_t}/${_b} sleep $$stime;\
		sleep $$stime
	(cat ${_b}.query;echo done.) | \
		perl ../aichat -o -t ${_t} > .${_b}.${_t}.result && \
		mv .${_b}.${_t}.result 0.${_t}/${_b}.result

. endfor
.endfor

results: ${RES}
