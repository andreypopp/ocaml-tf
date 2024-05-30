(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_emu_group_mapping

val github_emu_group_mapping :
  ?id:string prop ->
  group_id:float prop ->
  team_slug:string prop ->
  unit ->
  github_emu_group_mapping

val yojson_of_github_emu_group_mapping :
  github_emu_group_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  group_id : float prop;
  id : string prop;
  team_slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_id:float prop ->
  team_slug:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group_id:float prop ->
  team_slug:string prop ->
  string ->
  t Tf_core.resource
