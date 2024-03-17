(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_firewall__rule
type digitalocean_database_firewall

val digitalocean_database_firewall :
  ?id:string ->
  cluster_id:string ->
  rule:digitalocean_database_firewall__rule list ->
  string ->
  unit
