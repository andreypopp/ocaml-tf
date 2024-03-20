(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type association = {
  allocation_id : string prop;  (** allocation_id *)
  association_id : string prop;  (** association_id *)
  carrier_ip : string prop;  (** carrier_ip *)
  customer_owned_ip : string prop;  (** customer_owned_ip *)
  ip_owner_id : string prop;  (** ip_owner_id *)
  public_dns_name : string prop;  (** public_dns_name *)
  public_ip : string prop;  (** public_ip *)
}

type attachment = {
  attachment_id : string prop;  (** attachment_id *)
  device_index : float prop;  (** device_index *)
  instance_id : string prop;  (** instance_id *)
  instance_owner_id : string prop;  (** instance_owner_id *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_network_interface

val aws_network_interface :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_network_interface

val yojson_of_aws_network_interface : aws_network_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  association : association list prop;
  attachment : attachment list prop;
  availability_zone : string prop;
  description : string prop;
  id : string prop;
  interface_type : string prop;
  ipv6_addresses : string list prop;
  mac_address : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_name : string prop;
  private_ip : string prop;
  private_ips : string list prop;
  requester_id : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
