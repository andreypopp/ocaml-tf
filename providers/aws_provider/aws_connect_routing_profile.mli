(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_routing_profile__media_concurrencies
type aws_connect_routing_profile__queue_configs
type aws_connect_routing_profile

val aws_connect_routing_profile :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  default_outbound_queue_id:string ->
  description:string ->
  instance_id:string ->
  name:string ->
  media_concurrencies:
    aws_connect_routing_profile__media_concurrencies list ->
  queue_configs:aws_connect_routing_profile__queue_configs list ->
  string ->
  unit
