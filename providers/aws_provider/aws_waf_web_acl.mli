(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_web_acl__default_action

type aws_waf_web_acl__logging_configuration__redacted_fields__field_to_match

type aws_waf_web_acl__logging_configuration__redacted_fields
type aws_waf_web_acl__logging_configuration
type aws_waf_web_acl__rules__action
type aws_waf_web_acl__rules__override_action
type aws_waf_web_acl__rules
type aws_waf_web_acl

val aws_waf_web_acl :
  ?tags:(string * string) list ->
  metric_name:string ->
  name:string ->
  default_action:aws_waf_web_acl__default_action list ->
  logging_configuration:aws_waf_web_acl__logging_configuration list ->
  rules:aws_waf_web_acl__rules list ->
  string ->
  unit
