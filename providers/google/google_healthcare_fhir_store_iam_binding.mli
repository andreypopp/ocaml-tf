(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_healthcare_fhir_store_iam_binding

val google_healthcare_fhir_store_iam_binding :
  ?id:string prop ->
  fhir_store_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_healthcare_fhir_store_iam_binding

val yojson_of_google_healthcare_fhir_store_iam_binding :
  google_healthcare_fhir_store_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  fhir_store_id : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  fhir_store_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  fhir_store_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
