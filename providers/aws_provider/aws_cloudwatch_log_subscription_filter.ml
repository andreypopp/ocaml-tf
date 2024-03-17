(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_subscription_filter = {
  destination_arn : string prop;  (** destination_arn *)
  distribution : string prop option; [@option]  (** distribution *)
  filter_pattern : string prop;  (** filter_pattern *)
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_subscription_filter *)

type t = {
  destination_arn : string prop;
  distribution : string prop;
  filter_pattern : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  role_arn : string prop;
}

let aws_cloudwatch_log_subscription_filter ?distribution ?id
    ?role_arn ~destination_arn ~filter_pattern ~log_group_name ~name
    __resource_id =
  let __resource_type = "aws_cloudwatch_log_subscription_filter" in
  let __resource =
    ({
       destination_arn;
       distribution;
       filter_pattern;
       id;
       log_group_name;
       name;
       role_arn;
     }
      : aws_cloudwatch_log_subscription_filter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_subscription_filter __resource);
  let __resource_attributes =
    ({
       destination_arn =
         Prop.computed __resource_type __resource_id
           "destination_arn";
       distribution =
         Prop.computed __resource_type __resource_id "distribution";
       filter_pattern =
         Prop.computed __resource_type __resource_id "filter_pattern";
       id = Prop.computed __resource_type __resource_id "id";
       log_group_name =
         Prop.computed __resource_type __resource_id "log_group_name";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
