(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_sns_sms_preferences

val aws_sns_sms_preferences :
  ?default_sender_id:string prop ->
  ?default_sms_type:string prop ->
  ?delivery_status_iam_role_arn:string prop ->
  ?delivery_status_success_sampling_rate:string prop ->
  ?id:string prop ->
  ?monthly_spend_limit:float prop ->
  ?usage_report_s3_bucket:string prop ->
  unit ->
  aws_sns_sms_preferences

val yojson_of_aws_sns_sms_preferences :
  aws_sns_sms_preferences -> json

(** RESOURCE REGISTRATION *)

type t = private {
  default_sender_id : string prop;
  default_sms_type : string prop;
  delivery_status_iam_role_arn : string prop;
  delivery_status_success_sampling_rate : string prop;
  id : string prop;
  monthly_spend_limit : float prop;
  usage_report_s3_bucket : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_sender_id:string prop ->
  ?default_sms_type:string prop ->
  ?delivery_status_iam_role_arn:string prop ->
  ?delivery_status_success_sampling_rate:string prop ->
  ?id:string prop ->
  ?monthly_spend_limit:float prop ->
  ?usage_report_s3_bucket:string prop ->
  string ->
  t
