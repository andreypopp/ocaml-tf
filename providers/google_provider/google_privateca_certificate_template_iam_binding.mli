(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_template_iam_binding__condition
type google_privateca_certificate_template_iam_binding

val google_privateca_certificate_template_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  certificate_template:string ->
  members:string list ->
  role:string ->
  condition:
    google_privateca_certificate_template_iam_binding__condition list ->
  string ->
  unit
