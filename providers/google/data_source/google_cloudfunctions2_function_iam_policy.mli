(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_cloudfunctions2_function_iam_policy

val google_cloudfunctions2_function_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  cloud_function:string prop ->
  unit ->
  google_cloudfunctions2_function_iam_policy

val yojson_of_google_cloudfunctions2_function_iam_policy :
  google_cloudfunctions2_function_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cloud_function : string prop;
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
  cloud_function:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  cloud_function:string prop ->
  string ->
  t Tf_core.resource
