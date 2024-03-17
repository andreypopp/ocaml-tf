(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53_resolver_firewall_rule_group = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule_group *)

let aws_route53_resolver_firewall_rule_group ?tags ~name
    __resource_id =
  let __resource_type = "aws_route53_resolver_firewall_rule_group" in
  let __resource = { name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule_group __resource);
  ()
