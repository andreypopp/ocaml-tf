(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_query_log = {
  cloudwatch_log_group_arn : string prop;
  id : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_query_log) -> ()

let yojson_of_aws_route53_query_log =
  (function
   | {
       cloudwatch_log_group_arn = v_cloudwatch_log_group_arn;
       id = v_id;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_cloudwatch_log_group_arn
         in
         ("cloudwatch_log_group_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_query_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_query_log

[@@@deriving.end]

let aws_route53_query_log ?id ~cloudwatch_log_group_arn ~zone_id () :
    aws_route53_query_log =
  { cloudwatch_log_group_arn; id; zone_id }

type t = {
  arn : string prop;
  cloudwatch_log_group_arn : string prop;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~cloudwatch_log_group_arn ~zone_id __id =
  let __type = "aws_route53_query_log" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cloudwatch_log_group_arn =
         Prop.computed __type __id "cloudwatch_log_group_arn";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_query_log
        (aws_route53_query_log ?id ~cloudwatch_log_group_arn ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cloudwatch_log_group_arn ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cloudwatch_log_group_arn ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
