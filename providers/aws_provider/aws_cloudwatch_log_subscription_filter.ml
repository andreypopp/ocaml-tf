(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_subscription_filter = {
  destination_arn : string;  (** destination_arn *)
  distribution : string option; [@option]  (** distribution *)
  filter_pattern : string;  (** filter_pattern *)
  log_group_name : string;  (** log_group_name *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_subscription_filter *)

let aws_cloudwatch_log_subscription_filter ?distribution
    ~destination_arn ~filter_pattern ~log_group_name ~name
    __resource_id =
  let __resource_type = "aws_cloudwatch_log_subscription_filter" in
  let __resource =
    {
      destination_arn;
      distribution;
      filter_pattern;
      log_group_name;
      name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_subscription_filter __resource);
  ()
