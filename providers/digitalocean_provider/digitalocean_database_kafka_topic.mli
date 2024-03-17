(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_kafka_topic__config
type digitalocean_database_kafka_topic

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  replication_factor : float prop;
  state : string prop;
}

val digitalocean_database_kafka_topic :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?replication_factor:float prop ->
  cluster_id:string prop ->
  name:string prop ->
  config:digitalocean_database_kafka_topic__config list ->
  string ->
  t
