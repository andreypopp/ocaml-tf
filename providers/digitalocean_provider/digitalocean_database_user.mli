(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_user__settings__acl
type digitalocean_database_user__settings
type digitalocean_database_user

val digitalocean_database_user :
  ?id:string prop ->
  ?mysql_auth_plugin:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  settings:digitalocean_database_user__settings list ->
  string ->
  unit
