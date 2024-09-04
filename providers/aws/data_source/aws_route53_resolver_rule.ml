(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_rule = {
  domain_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  resolver_endpoint_id : string prop option; [@option]
  resolver_rule_id : string prop option; [@option]
  rule_type : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_rule) -> ()

let yojson_of_aws_route53_resolver_rule =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       name = v_name;
       resolver_endpoint_id = v_resolver_endpoint_id;
       resolver_rule_id = v_resolver_rule_id;
       rule_type = v_rule_type;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rule_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolver_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_rule_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolver_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_rule

[@@@deriving.end]

let aws_route53_resolver_rule ?domain_name ?id ?name
    ?resolver_endpoint_id ?resolver_rule_id ?rule_type ?tags () :
    aws_route53_resolver_rule =
  {
    domain_name;
    id;
    name;
    resolver_endpoint_id;
    resolver_rule_id;
    rule_type;
    tags;
  }

type t = {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  resolver_rule_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?domain_name ?id ?name ?resolver_endpoint_id
    ?resolver_rule_id ?rule_type ?tags __id =
  let __type = "aws_route53_resolver_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       resolver_endpoint_id =
         Prop.computed __type __id "resolver_endpoint_id";
       resolver_rule_id =
         Prop.computed __type __id "resolver_rule_id";
       rule_type = Prop.computed __type __id "rule_type";
       share_status = Prop.computed __type __id "share_status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_rule
        (aws_route53_resolver_rule ?domain_name ?id ?name
           ?resolver_endpoint_id ?resolver_rule_id ?rule_type ?tags
           ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?id ?name ?resolver_endpoint_id
    ?resolver_rule_id ?rule_type ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?id ?name ?resolver_endpoint_id
      ?resolver_rule_id ?rule_type ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
