(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule = {
  action : string prop;
  block_override_dns_type : string prop option; [@option]
  block_override_domain : string prop option; [@option]
  block_override_ttl : float prop option; [@option]
  block_response : string prop option; [@option]
  firewall_domain_list_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  priority : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_firewall_rule) -> ()

let yojson_of_aws_route53_resolver_firewall_rule =
  (function
   | {
       action = v_action;
       block_override_dns_type = v_block_override_dns_type;
       block_override_domain = v_block_override_domain;
       block_override_ttl = v_block_override_ttl;
       block_response = v_block_response;
       firewall_domain_list_id = v_firewall_domain_list_id;
       firewall_rule_group_id = v_firewall_rule_group_id;
       id = v_id;
       name = v_name;
       priority = v_priority;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_rule_group_id
         in
         ("firewall_rule_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_domain_list_id
         in
         ("firewall_domain_list_id", arg) :: bnds
       in
       let bnds =
         match v_block_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "block_response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_override_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_override_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_override_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "block_override_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_override_dns_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "block_override_dns_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_firewall_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_firewall_rule

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
