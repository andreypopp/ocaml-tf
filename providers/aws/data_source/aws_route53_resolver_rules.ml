(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_rules = {
  id : string prop option; [@option]
  name_regex : string prop option; [@option]
  owner_id : string prop option; [@option]
  resolver_endpoint_id : string prop option; [@option]
  rule_type : string prop option; [@option]
  share_status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_rules) -> ()

let yojson_of_aws_route53_resolver_rules =
  (function
   | {
       id = v_id;
       name_regex = v_name_regex;
       owner_id = v_owner_id;
       resolver_endpoint_id = v_resolver_endpoint_id;
       rule_type = v_rule_type;
       share_status = v_share_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_share_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "share_status", arg in
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
         match v_resolver_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
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
       `Assoc bnds
    : aws_route53_resolver_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_rules

[@@@deriving.end]

let aws_route53_resolver_rules ?id ?name_regex ?owner_id
    ?resolver_endpoint_id ?rule_type ?share_status () :
    aws_route53_resolver_rules =
  {
    id;
    name_regex;
    owner_id;
    resolver_endpoint_id;
    rule_type;
    share_status;
  }

type t = {
  id : string prop;
  name_regex : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  resolver_rule_ids : string list prop;
  rule_type : string prop;
  share_status : string prop;
}

let make ?id ?name_regex ?owner_id ?resolver_endpoint_id ?rule_type
    ?share_status __id =
  let __type = "aws_route53_resolver_rules" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name_regex = Prop.computed __type __id "name_regex";
       owner_id = Prop.computed __type __id "owner_id";
       resolver_endpoint_id =
         Prop.computed __type __id "resolver_endpoint_id";
       resolver_rule_ids =
         Prop.computed __type __id "resolver_rule_ids";
       rule_type = Prop.computed __type __id "rule_type";
       share_status = Prop.computed __type __id "share_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_rules
        (aws_route53_resolver_rules ?id ?name_regex ?owner_id
           ?resolver_endpoint_id ?rule_type ?share_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name_regex ?owner_id
    ?resolver_endpoint_id ?rule_type ?share_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name_regex ?owner_id ?resolver_endpoint_id ?rule_type
      ?share_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
