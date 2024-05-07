(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_healthcare_hl7_v2_store_iam_policy

val google_healthcare_hl7_v2_store_iam_policy :
  ?id:string prop ->
  hl7_v2_store_id:string prop ->
  policy_data:string prop ->
  unit ->
  google_healthcare_hl7_v2_store_iam_policy

val yojson_of_google_healthcare_hl7_v2_store_iam_policy :
  google_healthcare_hl7_v2_store_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  hl7_v2_store_id : string prop;
  id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  hl7_v2_store_id:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  hl7_v2_store_id:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
