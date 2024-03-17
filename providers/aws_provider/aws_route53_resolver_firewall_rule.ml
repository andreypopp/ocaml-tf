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

let aws_route53_resolver_firewall_rule ?block_override_dns_type
    ?block_override_domain ?block_override_ttl ?block_response ?id
    ~action ~firewall_domain_list_id ~firewall_rule_group_id ~name
    ~priority __resource_id =
  let __resource_type = "aws_route53_resolver_firewall_rule" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule __resource);
  ()
