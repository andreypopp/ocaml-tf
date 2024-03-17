(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

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
[@@deriving yojson_of]

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
[@@deriving yojson_of]

type aws_default_security_group = {
  revoke_rules_on_delete : bool option; [@option]
      (** revoke_rules_on_delete *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_default_security_group *)

let aws_default_security_group ?revoke_rules_on_delete ?tags
    __resource_id =
  let __resource_type = "aws_default_security_group" in
  let __resource = { revoke_rules_on_delete; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_security_group __resource);
  ()
