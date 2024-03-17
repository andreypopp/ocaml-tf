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
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  default_action:aws_waf_web_acl__default_action list ->
  logging_configuration:aws_waf_web_acl__logging_configuration list ->
  rules:aws_waf_web_acl__rules list ->
  string ->
  unit
