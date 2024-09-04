(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_nat_gateway

val aws_nat_gateway :
  ?allocation_id:string prop ->
  ?connectivity_type:string prop ->
  ?id:string prop ->
  ?private_ip:string prop ->
  ?secondary_allocation_ids:string prop list ->
  ?secondary_private_ip_address_count:float prop ->
  ?secondary_private_ip_addresses:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  unit ->
  aws_nat_gateway

val yojson_of_aws_nat_gateway : aws_nat_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocation_id : string prop;
  association_id : string prop;
  connectivity_type : string prop;
  id : string prop;
  network_interface_id : string prop;
  private_ip : string prop;
  public_ip : string prop;
  secondary_allocation_ids : string list prop;
  secondary_private_ip_address_count : float prop;
  secondary_private_ip_addresses : string list prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_id:string prop ->
  ?connectivity_type:string prop ->
  ?id:string prop ->
  ?private_ip:string prop ->
  ?secondary_allocation_ids:string prop list ->
  ?secondary_private_ip_address_count:float prop ->
  ?secondary_private_ip_addresses:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?allocation_id:string prop ->
  ?connectivity_type:string prop ->
  ?id:string prop ->
  ?private_ip:string prop ->
  ?secondary_allocation_ids:string prop list ->
  ?secondary_private_ip_address_count:float prop ->
  ?secondary_private_ip_addresses:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
