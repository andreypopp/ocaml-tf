(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_user

val github_user :
  ?id:string prop -> username:string prop -> unit -> github_user

val yojson_of_github_user : github_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  avatar_url : string prop;
  bio : string prop;
  blog : string prop;
  company : string prop;
  created_at : string prop;
  email : string prop;
  followers : float prop;
  following : float prop;
  gpg_keys : string list prop;
  gravatar_id : string prop;
  id : string prop;
  location : string prop;
  login : string prop;
  name : string prop;
  node_id : string prop;
  public_gists : float prop;
  public_repos : float prop;
  site_admin : bool prop;
  ssh_keys : string list prop;
  suspended_at : string prop;
  updated_at : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
