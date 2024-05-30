(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_project_card

val github_project_card :
  ?content_id:float prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?note:string prop ->
  column_id:string prop ->
  unit ->
  github_project_card

val yojson_of_github_project_card : github_project_card -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  card_id : float prop;
  column_id : string prop;
  content_id : float prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  note : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_id:float prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?note:string prop ->
  column_id:string prop ->
  string ->
  t

val make :
  ?content_id:float prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?note:string prop ->
  column_id:string prop ->
  string ->
  t Tf_core.resource
