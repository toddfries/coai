SRC != echo *.query

all:

.for _b in ${SRC:S/.query$//}
. for _t in 1 5 9

RES += 0.${_t}/${_b}.result

0.${_t}/${_b}.result: ${_b}.query Makefile ../aichat
	@echo "==> 0.${_t}/${_b}.result"
	@backoff=0;backinc=60;while :; do \
		stime="$$((RANDOM%5+backoff)).$$((RANDOM%10))"; \
		sleep $$stime; \
		take=$$((backoff/60)); \
		echo "==> 0.${_t}/${_b}.result try $$take slept $$stime";\
		if (cat ${_b}.query;echo done.) | \
		  perl ../aichat -o -t ${_t} > .${_b}.${_t}.result; then \
		    if [ -s .${_b}.${_t}.result ]; then \
			if ! grep "500 read timeout" .${_b}.${_t}.result; then \
			    mv .${_b}.${_t}.result 0.${_t}/${_b}.result; \
			    break; \
			fi; \
		    fi; \
		fi; \
		backoff=$$((backoff+backinc)); \
	done
		

. endfor
.endfor

results: ${RES}
