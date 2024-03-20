(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_local_gateway_route_table

val aws_ec2_local_gateway_route_table :
  ?id:string prop ->
  ?local_gateway_id:string prop ->
  ?local_gateway_route_table_id:string prop ->
  ?outpost_arn:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_local_gateway_route_table

val yojson_of_aws_ec2_local_gateway_route_table :
  aws_ec2_local_gateway_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  local_gateway_id : string prop;
  local_gateway_route_table_id : string prop;
  outpost_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?local_gateway_id:string prop ->
  ?local_gateway_route_table_id:string prop ->
  ?outpost_arn:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?local_gateway_id:string prop ->
  ?local_gateway_route_table_id:string prop ->
  ?outpost_arn:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
