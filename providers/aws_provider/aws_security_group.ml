(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  revoke_rules_on_delete : bool option; [@option]
      (** revoke_rules_on_delete *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_security_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_security_group *)

let aws_security_group ?description ?revoke_rules_on_delete ?tags
    ?timeouts __resource_id =
  let __resource_type = "aws_security_group" in
  let __resource =
    { description; revoke_rules_on_delete; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_security_group __resource);
  ()
