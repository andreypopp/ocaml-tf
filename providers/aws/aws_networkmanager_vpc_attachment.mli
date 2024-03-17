(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_vpc_attachment__options
type aws_networkmanager_vpc_attachment__timeouts
type aws_networkmanager_vpc_attachment

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
  subnet_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_arn : string prop;
}

val aws_networkmanager_vpc_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_vpc_attachment__timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  options:aws_networkmanager_vpc_attachment__options list ->
  string ->
  t
