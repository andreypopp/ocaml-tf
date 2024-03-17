(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_query_log = {
  cloudwatch_log_group_arn : string;  (** cloudwatch_log_group_arn *)
  id : string option; [@option]  (** id *)
  zone_id : string;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_query_log *)

let aws_route53_query_log ?id ~cloudwatch_log_group_arn ~zone_id
    __resource_id =
  let __resource_type = "aws_route53_query_log" in
  let __resource = { cloudwatch_log_group_arn; id; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_query_log __resource);
  ()
