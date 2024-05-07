(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type firewall_rules = {
  action : string prop;
  block_override_dns_type : string prop;
  block_override_domain : string prop;
  block_override_ttl : float prop;
  block_response : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  firewall_domain_list_id : string prop;
  firewall_rule_group_id : string prop;
  modification_time : string prop;
  name : string prop;
  priority : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_rules) -> ()

let yojson_of_firewall_rules =
  (function
   | {
       action = v_action;
       block_override_dns_type = v_block_override_dns_type;
       block_override_domain = v_block_override_domain;
       block_override_ttl = v_block_override_ttl;
       block_response = v_block_response;
       creation_time = v_creation_time;
       creator_request_id = v_creator_request_id;
       firewall_domain_list_id = v_firewall_domain_list_id;
       firewall_rule_group_id = v_firewall_rule_group_id;
       modification_time = v_modification_time;
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
         let arg =
           yojson_of_prop yojson_of_string v_modification_time
         in
         ("modification_time", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_creator_request_id
         in
         ("creator_request_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_time in
         ("creation_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_block_response
         in
         ("block_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_block_override_ttl
         in
         ("block_override_ttl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_block_override_domain
         in
         ("block_override_domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_block_override_dns_type
         in
         ("block_override_dns_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : firewall_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_rules

[@@@deriving.end]

type aws_route53_resolver_firewall_rules = {
  action : string prop option; [@option]
  firewall_rule_group_id : string prop;
  id : string prop option; [@option]
  priority : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_firewall_rules) -> ()

let yojson_of_aws_route53_resolver_firewall_rules =
  (function
   | {
       action = v_action;
       firewall_rule_group_id = v_firewall_rule_group_id;
       id = v_id;
       priority = v_priority;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
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
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_firewall_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_firewall_rules

[@@@deriving.end]

let aws_route53_resolver_firewall_rules ?action ?id ?priority
    ~firewall_rule_group_id () : aws_route53_resolver_firewall_rules
    =
  { action; firewall_rule_group_id; id; priority }

type t = {
  tf_name : string;
  action : string prop;
  firewall_rule_group_id : string prop;
  firewall_rules : firewall_rules list prop;
  id : string prop;
  priority : float prop;
}

let make ?action ?id ?priority ~firewall_rule_group_id __id =
  let __type = "aws_route53_resolver_firewall_rules" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       firewall_rule_group_id =
         Prop.computed __type __id "firewall_rule_group_id";
       firewall_rules = Prop.computed __type __id "firewall_rules";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_rules
        (aws_route53_resolver_firewall_rules ?action ?id ?priority
           ~firewall_rule_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?action ?id ?priority ~firewall_rule_group_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?action ?id ?priority ~firewall_rule_group_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
