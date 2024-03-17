(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53_resolver_firewall_rule = {
  action : string;  (** action *)
  block_override_dns_type : string option; [@option]
      (** block_override_dns_type *)
  block_override_domain : string option; [@option]
      (** block_override_domain *)
  block_override_ttl : float option; [@option]
      (** block_override_ttl *)
  block_response : string option; [@option]  (** block_response *)
  firewall_domain_list_id : string;  (** firewall_domain_list_id *)
  firewall_rule_group_id : string;  (** firewall_rule_group_id *)
  name : string;  (** name *)
  priority : float;  (** priority *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule *)

let aws_route53_resolver_firewall_rule ?block_override_dns_type
    ?block_override_domain ?block_override_ttl ?block_response
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
      name;
      priority;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_rule __resource);
  ()
