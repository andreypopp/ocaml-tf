(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sns_sms_preferences = {
  default_sender_id : string option; [@option]
      (** default_sender_id *)
  default_sms_type : string option; [@option]
      (** default_sms_type *)
  delivery_status_iam_role_arn : string option; [@option]
      (** delivery_status_iam_role_arn *)
  delivery_status_success_sampling_rate : string option; [@option]
      (** delivery_status_success_sampling_rate *)
  usage_report_s3_bucket : string option; [@option]
      (** usage_report_s3_bucket *)
}
[@@deriving yojson_of]
(** aws_sns_sms_preferences *)

let aws_sns_sms_preferences ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?usage_report_s3_bucket
    __resource_id =
  let __resource_type = "aws_sns_sms_preferences" in
  let __resource =
    {
      default_sender_id;
      default_sms_type;
      delivery_status_iam_role_arn;
      delivery_status_success_sampling_rate;
      usage_report_s3_bucket;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_sms_preferences __resource);
  ()
