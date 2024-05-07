(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_eip

val aws_eip :
  ?address:string prop ->
  ?associate_with_private_ip:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?domain:string prop ->
  ?id:string prop ->
  ?instance:string prop ->
  ?network_border_group:string prop ->
  ?network_interface:string prop ->
  ?public_ipv4_pool:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc:bool prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_eip

val yojson_of_aws_eip : aws_eip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  allocation_id : string prop;
  associate_with_private_ip : string prop;
  association_id : string prop;
  carrier_ip : string prop;
  customer_owned_ip : string prop;
  customer_owned_ipv4_pool : string prop;
  domain : string prop;
  id : string prop;
  instance : string prop;
  network_border_group : string prop;
  network_interface : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  public_ipv4_pool : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?address:string prop ->
  ?associate_with_private_ip:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?domain:string prop ->
  ?id:string prop ->
  ?instance:string prop ->
  ?network_border_group:string prop ->
  ?network_interface:string prop ->
  ?public_ipv4_pool:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc:bool prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?address:string prop ->
  ?associate_with_private_ip:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?domain:string prop ->
  ?id:string prop ->
  ?instance:string prop ->
  ?network_border_group:string prop ->
  ?network_interface:string prop ->
  ?public_ipv4_pool:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc:bool prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
