(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_healthcare_consent_store_iam_policy

val google_healthcare_consent_store_iam_policy :
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  policy_data:string prop ->
  unit ->
  google_healthcare_consent_store_iam_policy

val yojson_of_google_healthcare_consent_store_iam_policy :
  google_healthcare_consent_store_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  policy_data:string prop ->
  string ->
  t
