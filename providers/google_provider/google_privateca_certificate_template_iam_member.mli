(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_template_iam_member__condition
type google_privateca_certificate_template_iam_member

val google_privateca_certificate_template_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  certificate_template:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_privateca_certificate_template_iam_member__condition list ->
  string ->
  unit
