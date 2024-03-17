(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_site_to_site_vpn_attachment__timeouts
type aws_networkmanager_site_to_site_vpn_attachment

type t = private {
  arn : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpn_connection_arn : string prop;
}

val aws_networkmanager_site_to_site_vpn_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_site_to_site_vpn_attachment__timeouts ->
  core_network_id:string prop ->
  vpn_connection_arn:string prop ->
  string ->
  t
