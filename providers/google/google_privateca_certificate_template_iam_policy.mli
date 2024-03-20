(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_privateca_certificate_template_iam_policy

val google_privateca_certificate_template_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  certificate_template:string prop ->
  policy_data:string prop ->
  unit ->
  google_privateca_certificate_template_iam_policy

val yojson_of_google_privateca_certificate_template_iam_policy :
  google_privateca_certificate_template_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_template : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  certificate_template:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  certificate_template:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
