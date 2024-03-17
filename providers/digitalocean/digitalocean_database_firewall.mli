(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_firewall__rule
type digitalocean_database_firewall
type t = private { cluster_id : string prop; id : string prop }

val digitalocean_database_firewall :
  ?id:string prop ->
  cluster_id:string prop ->
  rule:digitalocean_database_firewall__rule list ->
  string ->
  t
