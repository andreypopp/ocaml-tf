(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type egress = {
  action : string prop;  (** action *)
  cidr_block : string prop;  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop;  (** icmp_code *)
  icmp_type : float prop;  (** icmp_type *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}

type ingress = {
  action : string prop;  (** action *)
  cidr_block : string prop;  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop;  (** icmp_code *)
  icmp_type : float prop;  (** icmp_type *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}

type aws_network_acl

val aws_network_acl :
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  unit ->
  aws_network_acl

val yojson_of_aws_network_acl : aws_network_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
