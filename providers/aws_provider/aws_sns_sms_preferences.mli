(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_sms_preferences

val aws_sns_sms_preferences :
  ?default_sender_id:string ->
  ?default_sms_type:string ->
  ?delivery_status_iam_role_arn:string ->
  ?delivery_status_success_sampling_rate:string ->
  ?id:string ->
  ?monthly_spend_limit:float ->
  ?usage_report_s3_bucket:string ->
  string ->
  unit
