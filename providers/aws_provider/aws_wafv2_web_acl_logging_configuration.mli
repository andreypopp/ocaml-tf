(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__action_condition

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__label_name_condition

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter

type aws_wafv2_web_acl_logging_configuration__logging_filter

type aws_wafv2_web_acl_logging_configuration__redacted_fields__method

type aws_wafv2_web_acl_logging_configuration__redacted_fields__query_string

type aws_wafv2_web_acl_logging_configuration__redacted_fields__single_header

type aws_wafv2_web_acl_logging_configuration__redacted_fields__uri_path

type aws_wafv2_web_acl_logging_configuration__redacted_fields

type aws_wafv2_web_acl_logging_configuration

type t = private {
  id: string prop;
  log_destination_configs: string list prop;
  resource_arn: string prop;
}

val aws_wafv2_web_acl_logging_configuration :
    ?id:string prop ->
    log_destination_configs:string  prop list ->
    resource_arn:string prop ->
    logging_filter:aws_wafv2_web_acl_logging_configuration__logging_filter list ->
    redacted_fields:aws_wafv2_web_acl_logging_configuration__redacted_fields list ->
    string ->
    t

