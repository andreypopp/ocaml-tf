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

type google_tags_tag_value_iam_binding

val google_tags_tag_value_iam_binding :
  ?id:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  role:string prop ->
  tag_value:string prop ->
  unit ->
  google_tags_tag_value_iam_binding

val yojson_of_google_tags_tag_value_iam_binding :
  google_tags_tag_value_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
  tag_value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  role:string prop ->
  tag_value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  role:string prop ->
  tag_value:string prop ->
  string ->
  t Tf_core.resource
