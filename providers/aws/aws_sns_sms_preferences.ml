(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_sms_preferences = {
  default_sender_id : string prop option; [@option]
      (** default_sender_id *)
  default_sms_type : string prop option; [@option]
      (** default_sms_type *)
  delivery_status_iam_role_arn : string prop option; [@option]
      (** delivery_status_iam_role_arn *)
  delivery_status_success_sampling_rate : string prop option;
      [@option]
      (** delivery_status_success_sampling_rate *)
  id : string prop option; [@option]  (** id *)
  monthly_spend_limit : float prop option; [@option]
      (** monthly_spend_limit *)
  usage_report_s3_bucket : string prop option; [@option]
      (** usage_report_s3_bucket *)
}
[@@deriving yojson_of]
(** aws_sns_sms_preferences *)

let aws_sns_sms_preferences ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
    ?usage_report_s3_bucket () : aws_sns_sms_preferences =
  {
    default_sender_id;
    default_sms_type;
    delivery_status_iam_role_arn;
    delivery_status_success_sampling_rate;
    id;
    monthly_spend_limit;
    usage_report_s3_bucket;
  }

type t = {
  default_sender_id : string prop;
  default_sms_type : string prop;
  delivery_status_iam_role_arn : string prop;
  delivery_status_success_sampling_rate : string prop;
  id : string prop;
  monthly_spend_limit : float prop;
  usage_report_s3_bucket : string prop;
}

let make ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
    ?usage_report_s3_bucket __id =
  let __type = "aws_sns_sms_preferences" in
  let __attrs =
    ({
       default_sender_id =
         Prop.computed __type __id "default_sender_id";
       default_sms_type =
         Prop.computed __type __id "default_sms_type";
       delivery_status_iam_role_arn =
         Prop.computed __type __id "delivery_status_iam_role_arn";
       delivery_status_success_sampling_rate =
         Prop.computed __type __id
           "delivery_status_success_sampling_rate";
       id = Prop.computed __type __id "id";
       monthly_spend_limit =
         Prop.computed __type __id "monthly_spend_limit";
       usage_report_s3_bucket =
         Prop.computed __type __id "usage_report_s3_bucket";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_sms_preferences
        (aws_sns_sms_preferences ?default_sender_id ?default_sms_type
           ?delivery_status_iam_role_arn
           ?delivery_status_success_sampling_rate ?id
           ?monthly_spend_limit ?usage_report_s3_bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
    ?usage_report_s3_bucket __id =
  let (r : _ Tf_core.resource) =
    make ?default_sender_id ?default_sms_type
      ?delivery_status_iam_role_arn
      ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
      ?usage_report_s3_bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
