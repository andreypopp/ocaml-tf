(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type teams = {
  description : string prop;  (** description *)
  id : float prop;  (** id *)
  members : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** members *)
  name : string prop;  (** name *)
  node_id : string prop;  (** node_id *)
  parent : (string * string prop) list;  (** parent *)
  privacy : string prop;  (** privacy *)
  repositories : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** repositories *)
  slug : string prop;  (** slug *)
}

type github_organization_teams

val github_organization_teams :
  ?id:string prop ->
  ?results_per_page:float prop ->
  ?root_teams_only:bool prop ->
  ?summary_only:bool prop ->
  unit ->
  github_organization_teams

val yojson_of_github_organization_teams :
  github_organization_teams -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  results_per_page : float prop;
  root_teams_only : bool prop;
  summary_only : bool prop;
  teams : teams list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?results_per_page:float prop ->
  ?root_teams_only:bool prop ->
  ?summary_only:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?results_per_page:float prop ->
  ?root_teams_only:bool prop ->
  ?summary_only:bool prop ->
  string ->
  t Tf_core.resource
