(in-package :asdf-user)

(defsystem "tomas"
  :author "chu <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :license "GNU GPL-3.0"
  :description "virtual pet game"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on (:trial :trial-glfw :trial-png)

  ;; Project stucture.
  :serial t
  :components ((:module "src"
                        :serial t
                        :components ((:file "packages")
                                     (:file "tomas"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "tomas"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "tomas:main")
