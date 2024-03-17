(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_security_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_security_group__timeouts *)

type aws_security_group__egress = {
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
[@@deriving yojson_of]

type aws_security_group__ingress = {
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
[@@deriving yojson_of]

type aws_security_group = {
  description : string prop option; [@option]  (** description *)
  egress : aws_security_group__egress list option; [@option]
      (** egress *)
  id : string prop option; [@option]  (** id *)
  ingress : aws_security_group__ingress list option; [@option]
      (** ingress *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  revoke_rules_on_delete : bool prop option; [@option]
      (** revoke_rules_on_delete *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
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
