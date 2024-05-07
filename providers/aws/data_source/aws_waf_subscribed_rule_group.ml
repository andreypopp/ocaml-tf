(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_waf_subscribed_rule_group = {
  id : string prop option; [@option]
  metric_name : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_waf_subscribed_rule_group) -> ()

let yojson_of_aws_waf_subscribed_rule_group =
  (function
   | { id = v_id; metric_name = v_metric_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_metric_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_name", arg in
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
    : aws_waf_subscribed_rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_waf_subscribed_rule_group

[@@@deriving.end]

let aws_waf_subscribed_rule_group ?id ?metric_name ?name () :
    aws_waf_subscribed_rule_group =
  { id; metric_name; name }

type t = {
  tf_name : string;
  id : string prop;
  metric_name : string prop;
  name : string prop;
}

let make ?id ?metric_name ?name __id =
  let __type = "aws_waf_subscribed_rule_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       metric_name = Prop.computed __type __id "metric_name";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_subscribed_rule_group
        (aws_waf_subscribed_rule_group ?id ?metric_name ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metric_name ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?metric_name ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
