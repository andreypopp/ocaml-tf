(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53_resolver_firewall_rule_group_association = {
  firewall_rule_group_id : string;  (** firewall_rule_group_id *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule_group_association *)

let aws_route53_resolver_firewall_rule_group_association ?tags
    ~firewall_rule_group_id ~name ~priority ~vpc_id __resource_id =
  let __resource_type =
    "aws_route53_resolver_firewall_rule_group_association"
  in
  let __resource =
    { firewall_rule_group_id; name; priority; tags; vpc_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule_group_association
       __resource);
  ()
