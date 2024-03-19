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
    ~name ~priority ~vpc_id () :
    aws_route53_resolver_firewall_rule_group_association =
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

type t = {
  arn : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?mutation_protection ?tags ?tags_all
    ~firewall_rule_group_id ~name ~priority ~vpc_id __resource_id =
  let __resource_type =
    "aws_route53_resolver_firewall_rule_group_association"
  in
  let __resource =
    aws_route53_resolver_firewall_rule_group_association ?id
      ?mutation_protection ?tags ?tags_all ~firewall_rule_group_id
      ~name ~priority ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule_group_association
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       firewall_rule_group_id =
         Prop.computed __resource_type __resource_id
           "firewall_rule_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       mutation_protection =
         Prop.computed __resource_type __resource_id
           "mutation_protection";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
