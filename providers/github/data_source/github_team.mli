(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type repositories_detailed = {
  repo_id : float prop;  (** repo_id *)
  role_name : string prop;  (** role_name *)
}

type github_team

val github_team :
  ?id:string prop ->
  ?membership_type:string prop ->
  ?results_per_page:float prop ->
  ?summary_only:bool prop ->
  slug:string prop ->
  unit ->
  github_team

val yojson_of_github_team : github_team -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  members : string list prop;
  membership_type : string prop;
  name : string prop;
  node_id : string prop;
  permission : string prop;
  privacy : string prop;
  repositories : string list prop;
  repositories_detailed : repositories_detailed list prop;
  results_per_page : float prop;
  slug : string prop;
  summary_only : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?membership_type:string prop ->
  ?results_per_page:float prop ->
  ?summary_only:bool prop ->
  slug:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?membership_type:string prop ->
  ?results_per_page:float prop ->
  ?summary_only:bool prop ->
  slug:string prop ->
  string ->
  t Tf_core.resource
