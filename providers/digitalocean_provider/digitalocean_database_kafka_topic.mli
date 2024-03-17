(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_kafka_topic__config
type digitalocean_database_kafka_topic

val digitalocean_database_kafka_topic :
  ?id:string ->
  ?partition_count:float ->
  ?replication_factor:float ->
  cluster_id:string ->
  name:string ->
  config:digitalocean_database_kafka_topic__config list ->
  string ->
  unit
