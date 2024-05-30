(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type review_request_delegation

val review_request_delegation :
  ?algorithm:string prop ->
  ?member_count:float prop ->
  ?notify:bool prop ->
  unit ->
  review_request_delegation

type github_team_settings

val github_team_settings :
  ?id:string prop ->
  ?review_request_delegation:review_request_delegation list ->
  team_id:string prop ->
  unit ->
  github_team_settings

val yojson_of_github_team_settings : github_team_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  team_id : string prop;
  team_slug : string prop;
  team_uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?review_request_delegation:review_request_delegation list ->
  team_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?review_request_delegation:review_request_delegation list ->
  team_id:string prop ->
  string ->
  t Tf_core.resource
