(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_sms_preferences

val aws_sns_sms_preferences :
  ?default_sender_id:string prop ->
  ?default_sms_type:string prop ->
  ?delivery_status_iam_role_arn:string prop ->
  ?delivery_status_success_sampling_rate:string prop ->
  ?id:string prop ->
  ?monthly_spend_limit:float prop ->
  ?usage_report_s3_bucket:string prop ->
  string ->
  unit
