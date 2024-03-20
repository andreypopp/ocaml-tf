(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type egress = {
  cidr_blocks : string prop list;  (** cidr_blocks *)
  description : string prop;  (** description *)
  from_port : float prop;  (** from_port *)
  ipv6_cidr_blocks : string prop list;  (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list;  (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_groups : string prop list;  (** security_groups *)
  self : bool prop;  (** self *)
  to_port : float prop;  (** to_port *)
}

type ingress = {
  cidr_blocks : string prop list;  (** cidr_blocks *)
  description : string prop;  (** description *)
  from_port : float prop;  (** from_port *)
  ipv6_cidr_blocks : string prop list;  (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list;  (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_groups : string prop list;  (** security_groups *)
  self : bool prop;  (** self *)
  to_port : float prop;  (** to_port *)
}

type aws_default_security_group

val aws_default_security_group :
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  unit ->
  aws_default_security_group

val yojson_of_aws_default_security_group :
  aws_default_security_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  name : string prop;
  name_prefix : string prop;
  owner_id : string prop;
  revoke_rules_on_delete : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  string ->
  t

val make :
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  string ->
  t Tf_core.resource
