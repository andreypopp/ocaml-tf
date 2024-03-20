(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule_group_association = {
  firewall_rule_group_association_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_route53_resolver_firewall_rule_group_association) -> ()

let yojson_of_aws_route53_resolver_firewall_rule_group_association =
  (function
   | {
       firewall_rule_group_association_id =
         v_firewall_rule_group_association_id;
       id = v_id;
     } ->
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
           yojson_of_prop yojson_of_string
             v_firewall_rule_group_association_id
         in
         ("firewall_rule_group_association_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_firewall_rule_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_route53_resolver_firewall_rule_group_association

[@@@deriving.end]

let aws_route53_resolver_firewall_rule_group_association ?id
    ~firewall_rule_group_association_id () :
    aws_route53_resolver_firewall_rule_group_association =
  { firewall_rule_group_association_id; id }

type t = {
  arn : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  firewall_rule_group_association_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  managed_owner_name : string prop;
  modification_time : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  status : string prop;
  status_message : string prop;
  vpc_id : string prop;
}

let make ?id ~firewall_rule_group_association_id __id =
  let __type =
    "aws_route53_resolver_firewall_rule_group_association"
  in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       creator_request_id =
         Prop.computed __type __id "creator_request_id";
       firewall_rule_group_association_id =
         Prop.computed __type __id
           "firewall_rule_group_association_id";
       firewall_rule_group_id =
         Prop.computed __type __id "firewall_rule_group_id";
       id = Prop.computed __type __id "id";
       managed_owner_name =
         Prop.computed __type __id "managed_owner_name";
       modification_time =
         Prop.computed __type __id "modification_time";
       mutation_protection =
         Prop.computed __type __id "mutation_protection";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_rule_group_association
        (aws_route53_resolver_firewall_rule_group_association ?id
           ~firewall_rule_group_association_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~firewall_rule_group_association_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~firewall_rule_group_association_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
