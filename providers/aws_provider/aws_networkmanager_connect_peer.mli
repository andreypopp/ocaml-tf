(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_connect_peer__bgp_options
type aws_networkmanager_connect_peer__timeouts

type aws_networkmanager_connect_peer__configuration__bgp_configurations = {
  core_network_address : string prop;  (** core_network_address *)
  core_network_asn : float prop;  (** core_network_asn *)
  peer_address : string prop;  (** peer_address *)
  peer_asn : float prop;  (** peer_asn *)
}

type aws_networkmanager_connect_peer__configuration = {
  bgp_configurations :
    aws_networkmanager_connect_peer__configuration__bgp_configurations
    list;
      (** bgp_configurations *)
  core_network_address : string prop;  (** core_network_address *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  protocol : string prop;  (** protocol *)
}

type aws_networkmanager_connect_peer

val aws_networkmanager_connect_peer :
  ?core_network_address:string prop ->
  ?id:string prop ->
  ?inside_cidr_blocks:string prop list ->
  ?subnet_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_connect_peer__timeouts ->
  connect_attachment_id:string prop ->
  peer_address:string prop ->
  bgp_options:aws_networkmanager_connect_peer__bgp_options list ->
  string ->
  unit
