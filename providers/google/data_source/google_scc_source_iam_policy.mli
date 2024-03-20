(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_scc_source_iam_policy

val google_scc_source_iam_policy :
  ?id:string prop ->
  organization:string prop ->
  source:string prop ->
  unit ->
  google_scc_source_iam_policy

val yojson_of_google_scc_source_iam_policy :
  google_scc_source_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  organization : string prop;
  policy_data : string prop;
  source : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  organization:string prop ->
  source:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  organization:string prop ->
  source:string prop ->
  string ->
  t Tf_core.resource
