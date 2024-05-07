(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__bgp_configurations = {
  core_network_address : string prop;  (** core_network_address *)
  core_network_asn : float prop;  (** core_network_asn *)
  peer_address : string prop;  (** peer_address *)
  peer_asn : float prop;  (** peer_asn *)
}

type configuration = {
  bgp_configurations : configuration__bgp_configurations list;
      (** bgp_configurations *)
  core_network_address : string prop;  (** core_network_address *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  protocol : string prop;  (** protocol *)
}

type bgp_options

val bgp_options : ?peer_asn:float prop -> unit -> bgp_options

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_networkmanager_connect_peer

val aws_networkmanager_connect_peer :
  ?core_network_address:string prop ->
  ?id:string prop ->
  ?inside_cidr_blocks:string prop list ->
  ?subnet_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?bgp_options:bgp_options list ->
  ?timeouts:timeouts ->
  connect_attachment_id:string prop ->
  peer_address:string prop ->
  unit ->
  aws_networkmanager_connect_peer

val yojson_of_aws_networkmanager_connect_peer :
  aws_networkmanager_connect_peer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  configuration : configuration list prop;
  connect_attachment_id : string prop;
  connect_peer_id : string prop;
  core_network_address : string prop;
  core_network_id : string prop;
  created_at : string prop;
  edge_location : string prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  state : string prop;
  subnet_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?core_network_address:string prop ->
  ?id:string prop ->
  ?inside_cidr_blocks:string prop list ->
  ?subnet_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?bgp_options:bgp_options list ->
  ?timeouts:timeouts ->
  connect_attachment_id:string prop ->
  peer_address:string prop ->
  string ->
  t

val make :
  ?core_network_address:string prop ->
  ?id:string prop ->
  ?inside_cidr_blocks:string prop list ->
  ?subnet_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?bgp_options:bgp_options list ->
  ?timeouts:timeouts ->
  connect_attachment_id:string prop ->
  peer_address:string prop ->
  string ->
  t Tf_core.resource
