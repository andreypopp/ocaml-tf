

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logging_filter__filter__condition__action_condition

val logging_filter__filter__condition__action_condition :
    action:string prop ->
    unit ->
    logging_filter__filter__condition__action_condition

type logging_filter__filter__condition__label_name_condition

val logging_filter__filter__condition__label_name_condition :
    label_name:string prop ->
    unit ->
    logging_filter__filter__condition__label_name_condition

type logging_filter__filter__condition

val logging_filter__filter__condition :
    ?action_condition:logging_filter__filter__condition__action_condition list ->
    ?label_name_condition:logging_filter__filter__condition__label_name_condition list ->
    unit ->
    logging_filter__filter__condition

type logging_filter__filter

val logging_filter__filter :
    behavior:string prop ->
    requirement:string prop ->
    condition:logging_filter__filter__condition list ->
    unit ->
    logging_filter__filter

type logging_filter

val logging_filter :
    default_behavior:string prop ->
    filter:logging_filter__filter list ->
    unit ->
    logging_filter

type redacted_fields__method

val redacted_fields__method :
    unit ->
    redacted_fields__method

type redacted_fields__query_string

val redacted_fields__query_string :
    unit ->
    redacted_fields__query_string

type redacted_fields__single_header

val redacted_fields__single_header :
    name:string prop ->
    unit ->
    redacted_fields__single_header

type redacted_fields__uri_path

val redacted_fields__uri_path :
    unit ->
    redacted_fields__uri_path

type redacted_fields

val redacted_fields :
    ?method_:redacted_fields__method list ->
    ?query_string:redacted_fields__query_string list ->
    ?single_header:redacted_fields__single_header list ->
    ?uri_path:redacted_fields__uri_path list ->
    unit ->
    redacted_fields

type aws_wafv2_web_acl_logging_configuration

val aws_wafv2_web_acl_logging_configuration :
    ?id:string prop ->
    ?logging_filter:logging_filter list ->
    ?redacted_fields:redacted_fields list ->
    log_destination_configs:string  prop list ->
    resource_arn:string prop ->
    unit ->
    aws_wafv2_web_acl_logging_configuration

val yojson_of_aws_wafv2_web_acl_logging_configuration : aws_wafv2_web_acl_logging_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  id: string prop;
  log_destination_configs: string list prop;
  resource_arn: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?id:string prop ->
    ?logging_filter:logging_filter list ->
    ?redacted_fields:redacted_fields list ->
    log_destination_configs:string  prop list ->
    resource_arn:string prop ->
    string ->
    t

val make :
    ?id:string prop ->
    ?logging_filter:logging_filter list ->
    ?redacted_fields:redacted_fields list ->
    log_destination_configs:string  prop list ->
    resource_arn:string prop ->
    string ->
    t Tf_core.resource

