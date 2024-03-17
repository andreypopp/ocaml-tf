(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_firewall_rule = {
  action : string prop;  (** action *)
  block_override_dns_type : string prop option; [@option]
      (** block_override_dns_type *)
  block_override_domain : string prop option; [@option]
      (** block_override_domain *)
  block_override_ttl : float prop option; [@option]
      (** block_override_ttl *)
  block_response : string prop option; [@option]
      (** block_response *)
  firewall_domain_list_id : string prop;
      (** firewall_domain_list_id *)
  firewall_rule_group_id : string prop;
      (** firewall_rule_group_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule *)

type t = {
  action : string prop;
  block_override_dns_type : string prop;
  block_override_domain : string prop;
  block_override_ttl : float prop;
  block_response : string prop;
  firewall_domain_list_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

let aws_route53_resolver_firewall_rule ?block_override_dns_type
    ?block_override_domain ?block_override_ttl ?block_response ?id
    ~action ~firewall_domain_list_id ~firewall_rule_group_id ~name
    ~priority __resource_id =
  let __resource_type = "aws_route53_resolver_firewall_rule" in
  let __resource =
    ({
       action;
       block_override_dns_type;
       block_override_domain;
       block_override_ttl;
       block_response;
       firewall_domain_list_id;
       firewall_rule_group_id;
       id;
       name;
       priority;
     }
      : aws_route53_resolver_firewall_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       block_override_dns_type =
         Prop.computed __resource_type __resource_id
           "block_override_dns_type";
       block_override_domain =
         Prop.computed __resource_type __resource_id
           "block_override_domain";
       block_override_ttl =
         Prop.computed __resource_type __resource_id
           "block_override_ttl";
       block_response =
         Prop.computed __resource_type __resource_id "block_response";
       firewall_domain_list_id =
         Prop.computed __resource_type __resource_id
           "firewall_domain_list_id";
       firewall_rule_group_id =
         Prop.computed __resource_type __resource_id
           "firewall_rule_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
     }
      : t)
  in
  __resource_attributes
