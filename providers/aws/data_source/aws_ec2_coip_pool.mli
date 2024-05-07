(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_coip_pool

val aws_ec2_coip_pool :
  ?id:string prop ->
  ?local_gateway_route_table_id:string prop ->
  ?pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_coip_pool

val yojson_of_aws_ec2_coip_pool : aws_ec2_coip_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  local_gateway_route_table_id : string prop;
  pool_cidrs : string list prop;
  pool_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?local_gateway_route_table_id:string prop ->
  ?pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?local_gateway_route_table_id:string prop ->
  ?pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
