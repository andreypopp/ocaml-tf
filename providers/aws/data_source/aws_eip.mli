(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_eip

val aws_eip :
  ?id:string prop ->
  ?public_ip:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_eip

val yojson_of_aws_eip : aws_eip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  association_id : string prop;
  carrier_ip : string prop;
  customer_owned_ip : string prop;
  customer_owned_ipv4_pool : string prop;
  domain : string prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  network_interface_owner_id : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  public_ipv4_pool : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?public_ip:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?public_ip:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
