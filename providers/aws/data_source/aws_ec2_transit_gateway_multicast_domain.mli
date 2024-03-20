(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type associations = {
  subnet_id : string prop;  (** subnet_id *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
}

type members = {
  group_ip_address : string prop;  (** group_ip_address *)
  network_interface_id : string prop;  (** network_interface_id *)
}

type sources = {
  group_ip_address : string prop;  (** group_ip_address *)
  network_interface_id : string prop;  (** network_interface_id *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_multicast_domain

val aws_ec2_transit_gateway_multicast_domain :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?transit_gateway_multicast_domain_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_multicast_domain

val yojson_of_aws_ec2_transit_gateway_multicast_domain :
  aws_ec2_transit_gateway_multicast_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  associations : associations list prop;
  auto_accept_shared_associations : string prop;
  id : string prop;
  igmpv2_support : string prop;
  members : members list prop;
  owner_id : string prop;
  sources : sources list prop;
  state : string prop;
  static_sources_support : string prop;
  tags : (string * string) list prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?transit_gateway_multicast_domain_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?transit_gateway_multicast_domain_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
