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

type google_data_catalog_tag_template_iam_member

val google_data_catalog_tag_template_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?condition:condition list ->
  member:string prop ->
  role:string prop ->
  tag_template:string prop ->
  unit ->
  google_data_catalog_tag_template_iam_member

val yojson_of_google_data_catalog_tag_template_iam_member :
  google_data_catalog_tag_template_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
  tag_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?condition:condition list ->
  member:string prop ->
  role:string prop ->
  tag_template:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?condition:condition list ->
  member:string prop ->
  role:string prop ->
  tag_template:string prop ->
  string ->
  t Tf_core.resource
