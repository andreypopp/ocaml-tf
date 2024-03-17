(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_attachment_accepter__timeouts
type aws_networkmanager_attachment_accepter

type t = private {
  attachment_id : string prop;
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
}

val aws_networkmanager_attachment_accepter :
  ?id:string prop ->
  ?timeouts:aws_networkmanager_attachment_accepter__timeouts ->
  attachment_id:string prop ->
  attachment_type:string prop ->
  string ->
  t
