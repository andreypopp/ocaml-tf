(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type egress

val egress :
  ?cidr_block:string prop ->
  ?icmp_code:float prop ->
  ?icmp_type:float prop ->
  ?ipv6_cidr_block:string prop ->
  action:string prop ->
  from_port:float prop ->
  protocol:string prop ->
  rule_no:float prop ->
  to_port:float prop ->
  unit ->
  egress

type ingress

val ingress :
  ?cidr_block:string prop ->
  ?icmp_code:float prop ->
  ?icmp_type:float prop ->
  ?ipv6_cidr_block:string prop ->
  action:string prop ->
  from_port:float prop ->
  protocol:string prop ->
  rule_no:float prop ->
  to_port:float prop ->
  unit ->
  ingress

type aws_default_network_acl

val aws_default_network_acl :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  default_network_acl_id:string prop ->
  egress:egress list ->
  ingress:ingress list ->
  unit ->
  aws_default_network_acl

val yojson_of_aws_default_network_acl :
  aws_default_network_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_network_acl_id : string prop;
  id : string prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  default_network_acl_id:string prop ->
  egress:egress list ->
  ingress:ingress list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  default_network_acl_id:string prop ->
  egress:egress list ->
  ingress:ingress list ->
  string ->
  t Tf_core.resource
