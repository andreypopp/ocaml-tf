(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_user__settings__acl
type digitalocean_database_user__settings
type digitalocean_database_user

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

val digitalocean_database_user :
  ?id:string prop ->
  ?mysql_auth_plugin:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  settings:digitalocean_database_user__settings list ->
  string ->
  t
