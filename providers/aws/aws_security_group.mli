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

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_security_group

val aws_security_group :
  ?description:string prop ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_security_group

val yojson_of_aws_security_group : aws_security_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  ?description:string prop ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?description:string prop ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
