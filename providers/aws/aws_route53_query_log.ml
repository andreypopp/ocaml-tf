(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~cloudwatch_log_group_arn ~zone_id
    __resource_id =
  let __resource_type = "aws_route53_query_log" in
  let __resource =
    aws_route53_query_log ?id ~cloudwatch_log_group_arn ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_query_log __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cloudwatch_log_group_arn =
         Prop.computed __resource_type __resource_id
           "cloudwatch_log_group_arn";
       id = Prop.computed __resource_type __resource_id "id";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
