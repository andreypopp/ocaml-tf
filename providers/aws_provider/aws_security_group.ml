(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_security_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_security_group__timeouts *)

type aws_security_group__egress = {
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

type aws_security_group__ingress = {
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

type aws_security_group = {
  description : string option; [@option]  (** description *)
  egress : aws_security_group__egress list option; [@option]
      (** egress *)
  id : string option; [@option]  (** id *)
  ingress : aws_security_group__ingress list option; [@option]
      (** ingress *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  revoke_rules_on_delete : bool option; [@option]
      (** revoke_rules_on_delete *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_id : string option; [@option]  (** vpc_id *)
  timeouts : aws_security_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_security_group *)

let aws_security_group ?description ?egress ?id ?ingress ?name
    ?name_prefix ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id
    ?timeouts __resource_id =
  let __resource_type = "aws_security_group" in
  let __resource =
    {
      description;
      egress;
      id;
      ingress;
      name;
      name_prefix;
      revoke_rules_on_delete;
      tags;
      tags_all;
      vpc_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_security_group __resource);
  ()
