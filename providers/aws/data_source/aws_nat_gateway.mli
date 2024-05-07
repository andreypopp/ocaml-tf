(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_nat_gateway

val aws_nat_gateway :
  ?id:string prop ->
  ?state:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
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
  state : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?state:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?state:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
