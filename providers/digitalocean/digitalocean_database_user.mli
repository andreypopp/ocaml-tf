(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type settings__acl

val settings__acl :
  permission:string prop ->
  topic:string prop ->
  unit ->
  settings__acl

type settings

val settings : acl:settings__acl list -> unit -> settings

type digitalocean_database_user

val digitalocean_database_user :
  ?id:string prop ->
  ?mysql_auth_plugin:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  settings:settings list ->
  unit ->
  digitalocean_database_user

val yojson_of_digitalocean_database_user :
  digitalocean_database_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_cert : string prop;
  access_key : string prop;
  cluster_id : string prop;
  id : string prop;
  mysql_auth_plugin : string prop;
  name : string prop;
  password : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mysql_auth_plugin:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  settings:settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mysql_auth_plugin:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  settings:settings list ->
  string ->
  t Tf_core.resource
