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

type google_data_catalog_entry_group_iam_binding

val google_data_catalog_entry_group_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  entry_group:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_data_catalog_entry_group_iam_binding

val yojson_of_google_data_catalog_entry_group_iam_binding :
  google_data_catalog_entry_group_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  entry_group : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  entry_group:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  entry_group:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
