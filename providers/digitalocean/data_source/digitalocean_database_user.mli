(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type settings__acl = {
  id : string prop;  (** id *)
  permission : string prop;  (** permission *)
  topic : string prop;  (** topic *)
}

type settings = { acl : settings__acl list  (** acl *) }
type digitalocean_database_user

val digitalocean_database_user :
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  unit ->
  digitalocean_database_user

val yojson_of_digitalocean_database_user :
  digitalocean_database_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_cert : string prop;
  access_key : string prop;
  cluster_id : string prop;
  id : string prop;
  mysql_auth_plugin : string prop;
  name : string prop;
  password : string prop;
  role : string prop;
  settings : settings list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
