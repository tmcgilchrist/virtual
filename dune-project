(lang dune 3.19)
(using ctypes 0.3)
(name virtual)
(generate_opam_files true)

(license BSD3)

(package
 (name virtual)
 (synopsis "Virtual library example")
 (description "Virtual library example")
 (depends
  (ocaml (>= 5.2))
  (ocamlformat (and :with-dev-setup (= 0.27.0)))
  (alcotest (and :with-test (>= 1.9.0)))))