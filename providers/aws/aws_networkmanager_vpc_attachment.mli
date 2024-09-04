(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type options

val options :
  ?appliance_mode_support:bool prop ->
  ?ipv6_support:bool prop ->
  unit ->
  options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_networkmanager_vpc_attachment

val aws_networkmanager_vpc_attachment :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?options:options list ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  unit ->
  aws_networkmanager_vpc_attachment

val yojson_of_aws_networkmanager_vpc_attachment :
  aws_networkmanager_vpc_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?options:options list ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?options:options list ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  string ->
  t Tf_core.resource
