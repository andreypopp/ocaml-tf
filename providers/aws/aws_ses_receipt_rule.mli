(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_receipt_rule__add_header_action
type aws_ses_receipt_rule__bounce_action
type aws_ses_receipt_rule__lambda_action
type aws_ses_receipt_rule__s3_action
type aws_ses_receipt_rule__sns_action
type aws_ses_receipt_rule__stop_action
type aws_ses_receipt_rule__workmail_action
type aws_ses_receipt_rule

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

val aws_ses_receipt_rule :
  ?after:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?recipients:string prop list ->
  ?scan_enabled:bool prop ->
  ?tls_policy:string prop ->
  name:string prop ->
  rule_set_name:string prop ->
  add_header_action:aws_ses_receipt_rule__add_header_action list ->
  bounce_action:aws_ses_receipt_rule__bounce_action list ->
  lambda_action:aws_ses_receipt_rule__lambda_action list ->
  s3_action:aws_ses_receipt_rule__s3_action list ->
  sns_action:aws_ses_receipt_rule__sns_action list ->
  stop_action:aws_ses_receipt_rule__stop_action list ->
  workmail_action:aws_ses_receipt_rule__workmail_action list ->
  string ->
  t
