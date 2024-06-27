LISP ?= ros -Q run

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load tomas.asd \
		--eval '(ql:quickload :tomas)' \
		--eval '(asdf:make :tomas)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp
