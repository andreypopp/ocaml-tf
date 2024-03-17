(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_template_iam_binding__condition
type google_privateca_certificate_template_iam_binding

val google_privateca_certificate_template_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  certificate_template:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_privateca_certificate_template_iam_binding__condition list ->
  string ->
  unit
