(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_web_acl__default_action

type aws_wafregional_web_acl__logging_configuration__redacted_fields__field_to_match

type aws_wafregional_web_acl__logging_configuration__redacted_fields
type aws_wafregional_web_acl__logging_configuration
type aws_wafregional_web_acl__rule__action
type aws_wafregional_web_acl__rule__override_action
type aws_wafregional_web_acl__rule
type aws_wafregional_web_acl

type t = private {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_wafregional_web_acl :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  default_action:aws_wafregional_web_acl__default_action list ->
  logging_configuration:
    aws_wafregional_web_acl__logging_configuration list ->
  rule:aws_wafregional_web_acl__rule list ->
  string ->
  t
