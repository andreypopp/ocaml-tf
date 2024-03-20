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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_network_acl_id:string prop ->
  egress:egress list ->
  ingress:ingress list ->
  unit ->
  aws_default_network_acl

val yojson_of_aws_default_network_acl :
  aws_default_network_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  default_network_acl_id : string prop;
  id : string prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_network_acl_id:string prop ->
  egress:egress list ->
  ingress:ingress list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_network_acl_id:string prop ->
  egress:egress list ->
  ingress:ingress list ->
  string ->
  t Tf_core.resource
