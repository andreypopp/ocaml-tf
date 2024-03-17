(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_security_group__egress = {
  cidr_blocks : string list;  (** cidr_blocks *)
  description : string;  (** description *)
  from_port : float;  (** from_port *)
  ipv6_cidr_blocks : string list;  (** ipv6_cidr_blocks *)
  prefix_list_ids : string list;  (** prefix_list_ids *)
  protocol : string;  (** protocol *)
  security_groups : string list;  (** security_groups *)
  self : bool;  (** self *)
  to_port : float;  (** to_port *)
}

type aws_default_security_group__ingress = {
  cidr_blocks : string list;  (** cidr_blocks *)
  description : string;  (** description *)
  from_port : float;  (** from_port *)
  ipv6_cidr_blocks : string list;  (** ipv6_cidr_blocks *)
  prefix_list_ids : string list;  (** prefix_list_ids *)
  protocol : string;  (** protocol *)
  security_groups : string list;  (** security_groups *)
  self : bool;  (** self *)
  to_port : float;  (** to_port *)
}

type aws_default_security_group

val aws_default_security_group :
  ?egress:aws_default_security_group__egress list ->
  ?id:string ->
  ?ingress:aws_default_security_group__ingress list ->
  ?revoke_rules_on_delete:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_id:string ->
  string ->
  unit
