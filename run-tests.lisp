
(load "tomas.asd")
(load "tomas-tests.asd")

(ql:quickload "tomas-tests")

(in-package :tomas-tests)

(uiop:quit (if (run-all-tests) 0 1))
