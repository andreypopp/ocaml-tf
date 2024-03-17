(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_firewall_rule_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule_group *)

let aws_route53_resolver_firewall_rule_group ?id ?tags ?tags_all
    ~name __resource_id =
  let __resource_type = "aws_route53_resolver_firewall_rule_group" in
  let __resource = { id; name; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule_group __resource);
  ()
