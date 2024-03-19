(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_healthcare_consent_store_iam_member

val google_healthcare_consent_store_iam_member :
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  member:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_healthcare_consent_store_iam_member

val yojson_of_google_healthcare_consent_store_iam_member :
  google_healthcare_consent_store_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  member:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
