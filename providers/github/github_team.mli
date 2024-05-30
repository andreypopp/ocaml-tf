(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_team

val github_team :
  ?create_default_maintainer:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ldap_dn:string prop ->
  ?parent_team_id:string prop ->
  ?parent_team_read_id:string prop ->
  ?parent_team_read_slug:string prop ->
  ?privacy:string prop ->
  name:string prop ->
  unit ->
  github_team

val yojson_of_github_team : github_team -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_default_maintainer : bool prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  ldap_dn : string prop;
  members_count : float prop;
  name : string prop;
  node_id : string prop;
  parent_team_id : string prop;
  parent_team_read_id : string prop;
  parent_team_read_slug : string prop;
  privacy : string prop;
  slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_default_maintainer:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ldap_dn:string prop ->
  ?parent_team_id:string prop ->
  ?parent_team_read_id:string prop ->
  ?parent_team_read_slug:string prop ->
  ?privacy:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?create_default_maintainer:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ldap_dn:string prop ->
  ?parent_team_id:string prop ->
  ?parent_team_read_id:string prop ->
  ?parent_team_read_slug:string prop ->
  ?privacy:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
