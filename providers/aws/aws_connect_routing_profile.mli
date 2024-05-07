(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type media_concurrencies

val media_concurrencies :
  channel:string prop ->
  concurrency:float prop ->
  unit ->
  media_concurrencies

type queue_configs

val queue_configs :
  channel:string prop ->
  delay:float prop ->
  priority:float prop ->
  queue_id:string prop ->
  unit ->
  queue_configs

type aws_connect_routing_profile

val aws_connect_routing_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_outbound_queue_id:string prop ->
  description:string prop ->
  instance_id:string prop ->
  name:string prop ->
  media_concurrencies:media_concurrencies list ->
  queue_configs:queue_configs list ->
  unit ->
  aws_connect_routing_profile

val yojson_of_aws_connect_routing_profile :
  aws_connect_routing_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_outbound_queue_id : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  routing_profile_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_outbound_queue_id:string prop ->
  description:string prop ->
  instance_id:string prop ->
  name:string prop ->
  media_concurrencies:media_concurrencies list ->
  queue_configs:queue_configs list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_outbound_queue_id:string prop ->
  description:string prop ->
  instance_id:string prop ->
  name:string prop ->
  media_concurrencies:media_concurrencies list ->
  queue_configs:queue_configs list ->
  string ->
  t Tf_core.resource
