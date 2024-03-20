(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type media_concurrencies = {
  channel : string prop;  (** channel *)
  concurrency : float prop;  (** concurrency *)
}

type queue_configs = {
  channel : string prop;  (** channel *)
  delay : float prop;  (** delay *)
  priority : float prop;  (** priority *)
  queue_arn : string prop;  (** queue_arn *)
  queue_id : string prop;  (** queue_id *)
  queue_name : string prop;  (** queue_name *)
}

type aws_connect_routing_profile

val aws_connect_routing_profile :
  ?id:string prop ->
  ?name:string prop ->
  ?routing_profile_id:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  unit ->
  aws_connect_routing_profile

val yojson_of_aws_connect_routing_profile :
  aws_connect_routing_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  default_outbound_queue_id : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  media_concurrencies : media_concurrencies list prop;
  name : string prop;
  queue_configs : queue_configs list prop;
  routing_profile_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?routing_profile_id:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?routing_profile_id:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
