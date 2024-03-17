(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_db

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
}

val digitalocean_database_db :
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t
