(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_template_iam_member__condition
type google_privateca_certificate_template_iam_member

val google_privateca_certificate_template_iam_member :
  certificate_template:string ->
  member:string ->
  role:string ->
  condition:
    google_privateca_certificate_template_iam_member__condition list ->
  string ->
  unit
