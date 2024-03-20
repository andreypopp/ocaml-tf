(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule_group = {
  firewall_rule_group_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_firewall_rule_group) -> ()

let yojson_of_aws_route53_resolver_firewall_rule_group =
  (function
   | { firewall_rule_group_id = v_firewall_rule_group_id; id = v_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : aws_route53_resolver_firewall_rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_firewall_rule_group

[@@@deriving.end]

let aws_route53_resolver_firewall_rule_group ?id
    ~firewall_rule_group_id () :
    aws_route53_resolver_firewall_rule_group =
  { firewall_rule_group_id; id }

type t = {
  arn : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  modification_time : string prop;
  name : string prop;
  owner_id : string prop;
  rule_count : float prop;
  share_status : string prop;
  status : string prop;
  status_message : string prop;
}

let make ?id ~firewall_rule_group_id __id =
  let __type = "aws_route53_resolver_firewall_rule_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       creator_request_id =
         Prop.computed __type __id "creator_request_id";
       firewall_rule_group_id =
         Prop.computed __type __id "firewall_rule_group_id";
       id = Prop.computed __type __id "id";
       modification_time =
         Prop.computed __type __id "modification_time";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       rule_count = Prop.computed __type __id "rule_count";
       share_status = Prop.computed __type __id "share_status";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_rule_group
        (aws_route53_resolver_firewall_rule_group ?id
           ~firewall_rule_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~firewall_rule_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~firewall_rule_group_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
