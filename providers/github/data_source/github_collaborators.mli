(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type collaborator = {
  events_url : string prop;  (** events_url *)
  followers_url : string prop;  (** followers_url *)
  following_url : string prop;  (** following_url *)
  gists_url : string prop;  (** gists_url *)
  html_url : string prop;  (** html_url *)
  id : float prop;  (** id *)
  login : string prop;  (** login *)
  organizations_url : string prop;  (** organizations_url *)
  permission : string prop;  (** permission *)
  received_events_url : string prop;  (** received_events_url *)
  repos_url : string prop;  (** repos_url *)
  site_admin : bool prop;  (** site_admin *)
  starred_url : string prop;  (** starred_url *)
  subscriptions_url : string prop;  (** subscriptions_url *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop;  (** url *)
}

type github_collaborators

val github_collaborators :
  ?affiliation:string prop ->
  ?id:string prop ->
  owner:string prop ->
  repository:string prop ->
  unit ->
  github_collaborators

val yojson_of_github_collaborators : github_collaborators -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  affiliation : string prop;
  collaborator : collaborator list prop;
  id : string prop;
  owner : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?affiliation:string prop ->
  ?id:string prop ->
  owner:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?affiliation:string prop ->
  ?id:string prop ->
  owner:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
