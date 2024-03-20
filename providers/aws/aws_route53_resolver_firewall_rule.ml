(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~priority () : aws_route53_resolver_firewall_rule =
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

let make ?block_override_dns_type ?block_override_domain
    ?block_override_ttl ?block_response ?id ~action
    ~firewall_domain_list_id ~firewall_rule_group_id ~name ~priority
    __id =
  let __type = "aws_route53_resolver_firewall_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       block_override_dns_type =
         Prop.computed __type __id "block_override_dns_type";
       block_override_domain =
         Prop.computed __type __id "block_override_domain";
       block_override_ttl =
         Prop.computed __type __id "block_override_ttl";
       block_response = Prop.computed __type __id "block_response";
       firewall_domain_list_id =
         Prop.computed __type __id "firewall_domain_list_id";
       firewall_rule_group_id =
         Prop.computed __type __id "firewall_rule_group_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_rule
        (aws_route53_resolver_firewall_rule ?block_override_dns_type
           ?block_override_domain ?block_override_ttl ?block_response
           ?id ~action ~firewall_domain_list_id
           ~firewall_rule_group_id ~name ~priority ());
    attrs = __attrs;
  }

let register ?tf_module ?block_override_dns_type
    ?block_override_domain ?block_override_ttl ?block_response ?id
    ~action ~firewall_domain_list_id ~firewall_rule_group_id ~name
    ~priority __id =
  let (r : _ Tf_core.resource) =
    make ?block_override_dns_type ?block_override_domain
      ?block_override_ttl ?block_response ?id ~action
      ~firewall_domain_list_id ~firewall_rule_group_id ~name
      ~priority __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
