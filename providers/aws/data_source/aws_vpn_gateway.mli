(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpn_gateway

val aws_vpn_gateway :
  ?amazon_side_asn:string prop ->
  ?attached_vpc_id:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpn_gateway

val yojson_of_aws_vpn_gateway : aws_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  amazon_side_asn : string prop;
  arn : string prop;
  attached_vpc_id : string prop;
  availability_zone : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?amazon_side_asn:string prop ->
  ?attached_vpc_id:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?amazon_side_asn:string prop ->
  ?attached_vpc_id:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
