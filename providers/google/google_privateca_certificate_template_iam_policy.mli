(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_template_iam_policy

type t = private {
  certificate_template : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_privateca_certificate_template_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  certificate_template:string prop ->
  policy_data:string prop ->
  string ->
  t
