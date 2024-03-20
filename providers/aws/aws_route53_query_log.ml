(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_query_log = {
  cloudwatch_log_group_arn : string prop;
      (** cloudwatch_log_group_arn *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_query_log *)

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
