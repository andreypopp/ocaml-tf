(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type add_header_action

val add_header_action :
  header_name:string prop ->
  header_value:string prop ->
  position:float prop ->
  unit ->
  add_header_action

type bounce_action

val bounce_action :
  ?status_code:string prop ->
  ?topic_arn:string prop ->
  message:string prop ->
  position:float prop ->
  sender:string prop ->
  smtp_reply_code:string prop ->
  unit ->
  bounce_action

type lambda_action

val lambda_action :
  ?invocation_type:string prop ->
  ?topic_arn:string prop ->
  function_arn:string prop ->
  position:float prop ->
  unit ->
  lambda_action

type s3_action

val s3_action :
  ?kms_key_arn:string prop ->
  ?object_key_prefix:string prop ->
  ?topic_arn:string prop ->
  bucket_name:string prop ->
  position:float prop ->
  unit ->
  s3_action

type sns_action

val sns_action :
  ?encoding:string prop ->
  position:float prop ->
  topic_arn:string prop ->
  unit ->
  sns_action

type stop_action

val stop_action :
  ?topic_arn:string prop ->
  position:float prop ->
  scope:string prop ->
  unit ->
  stop_action

type workmail_action

val workmail_action :
  ?topic_arn:string prop ->
  organization_arn:string prop ->
  position:float prop ->
  unit ->
  workmail_action

type aws_ses_receipt_rule

val aws_ses_receipt_rule :
  ?after:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?recipients:string prop list ->
  ?scan_enabled:bool prop ->
  ?tls_policy:string prop ->
  name:string prop ->
  rule_set_name:string prop ->
  add_header_action:add_header_action list ->
  bounce_action:bounce_action list ->
  lambda_action:lambda_action list ->
  s3_action:s3_action list ->
  sns_action:sns_action list ->
  stop_action:stop_action list ->
  workmail_action:workmail_action list ->
  unit ->
  aws_ses_receipt_rule

val yojson_of_aws_ses_receipt_rule : aws_ses_receipt_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  after : string prop;
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  recipients : string list prop;
  rule_set_name : string prop;
  scan_enabled : bool prop;
  tls_policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?after:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?recipients:string prop list ->
  ?scan_enabled:bool prop ->
  ?tls_policy:string prop ->
  name:string prop ->
  rule_set_name:string prop ->
  add_header_action:add_header_action list ->
  bounce_action:bounce_action list ->
  lambda_action:lambda_action list ->
  s3_action:s3_action list ->
  sns_action:sns_action list ->
  stop_action:stop_action list ->
  workmail_action:workmail_action list ->
  string ->
  t
