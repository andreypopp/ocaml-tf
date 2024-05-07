(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_vpc_security_group_rule

val aws_vpc_security_group_rule :
  ?security_group_rule_id:string prop ->
  filter:filter list ->
  unit ->
  aws_vpc_security_group_rule

val yojson_of_aws_vpc_security_group_rule :
  aws_vpc_security_group_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cidr_ipv4 : string prop;
  cidr_ipv6 : string prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ip_protocol : string prop;
  is_egress : bool prop;
  prefix_list_id : string prop;
  referenced_security_group_id : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  tags : (string * string) list prop;
  to_port : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?security_group_rule_id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?security_group_rule_id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
