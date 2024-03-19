(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_dashboard = {
  dashboard_body : string prop;  (** dashboard_body *)
  dashboard_name : string prop;  (** dashboard_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_dashboard *)

let aws_cloudwatch_dashboard ?id ~dashboard_body ~dashboard_name () :
    aws_cloudwatch_dashboard =
  { dashboard_body; dashboard_name; id }

type t = {
  dashboard_arn : string prop;
  dashboard_body : string prop;
  dashboard_name : string prop;
  id : string prop;
}

let register ?tf_module ?id ~dashboard_body ~dashboard_name
    __resource_id =
  let __resource_type = "aws_cloudwatch_dashboard" in
  let __resource =
    aws_cloudwatch_dashboard ?id ~dashboard_body ~dashboard_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_dashboard __resource);
  let __resource_attributes =
    ({
       dashboard_arn =
         Prop.computed __resource_type __resource_id "dashboard_arn";
       dashboard_body =
         Prop.computed __resource_type __resource_id "dashboard_body";
       dashboard_name =
         Prop.computed __resource_type __resource_id "dashboard_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
