(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_user__settings__acl
type digitalocean_database_user__settings
type digitalocean_database_user

val digitalocean_database_user :
  ?id:string ->
  ?mysql_auth_plugin:string ->
  cluster_id:string ->
  name:string ->
  settings:digitalocean_database_user__settings list ->
  string ->
  unit
