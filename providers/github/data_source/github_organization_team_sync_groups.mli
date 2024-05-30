(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups = {
  group_description : string prop;  (** group_description *)
  group_id : string prop;  (** group_id *)
  group_name : string prop;  (** group_name *)
}

type github_organization_team_sync_groups

val github_organization_team_sync_groups :
  ?id:string prop -> unit -> github_organization_team_sync_groups

val yojson_of_github_organization_team_sync_groups :
  github_organization_team_sync_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
