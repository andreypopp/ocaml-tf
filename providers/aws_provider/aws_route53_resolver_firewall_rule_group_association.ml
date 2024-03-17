(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_firewall_rule_group_association = {
  firewall_rule_group_id : string prop;
      (** firewall_rule_group_id *)
  id : string prop option; [@option]  (** id *)
  mutation_protection : string prop option; [@option]
      (** mutation_protection *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule_group_association *)

let aws_route53_resolver_firewall_rule_group_association ?id
    ?mutation_protection ?tags ?tags_all ~firewall_rule_group_id
    ~name ~priority ~vpc_id __resource_id =
  let __resource_type =
    "aws_route53_resolver_firewall_rule_group_association"
  in
  let __resource =
    {
      firewall_rule_group_id;
      id;
      mutation_protection;
      name;
      priority;
      tags;
      tags_all;
      vpc_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule_group_association
       __resource);
  ()
