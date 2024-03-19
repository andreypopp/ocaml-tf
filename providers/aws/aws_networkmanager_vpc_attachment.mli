(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  options:options list ->
  unit ->
  aws_networkmanager_vpc_attachment

val yojson_of_aws_networkmanager_vpc_attachment :
  aws_networkmanager_vpc_attachment -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  options:options list ->
  string ->
  t
