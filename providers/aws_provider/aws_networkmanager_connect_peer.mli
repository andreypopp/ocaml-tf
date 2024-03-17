(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_connect_peer__bgp_options
type aws_networkmanager_connect_peer__timeouts

type aws_networkmanager_connect_peer__configuration__bgp_configurations = {
  core_network_address : string;  (** core_network_address *)
  core_network_asn : float;  (** core_network_asn *)
  peer_address : string;  (** peer_address *)
  peer_asn : float;  (** peer_asn *)
}

type aws_networkmanager_connect_peer__configuration = {
  bgp_configurations :
    aws_networkmanager_connect_peer__configuration__bgp_configurations
    list;
      (** bgp_configurations *)
  core_network_address : string;  (** core_network_address *)
  inside_cidr_blocks : string list;  (** inside_cidr_blocks *)
  peer_address : string;  (** peer_address *)
  protocol : string;  (** protocol *)
}

type aws_networkmanager_connect_peer

val aws_networkmanager_connect_peer :
  ?core_network_address:string ->
  ?id:string ->
  ?inside_cidr_blocks:string list ->
  ?subnet_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_networkmanager_connect_peer__timeouts ->
  connect_attachment_id:string ->
  peer_address:string ->
  bgp_options:aws_networkmanager_connect_peer__bgp_options list ->
  string ->
  unit
