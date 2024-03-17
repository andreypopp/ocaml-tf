(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__action_condition = {
  action : string;  (** action *)
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__action_condition *)

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__label_name_condition = {
  label_name : string;  (** label_name *)
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__label_name_condition *)

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition = {
  action_condition :
    aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__action_condition
    list;
  label_name_condition :
    aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition__label_name_condition
    list;
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition *)

type aws_wafv2_web_acl_logging_configuration__logging_filter__filter = {
  behavior : string;  (** behavior *)
  requirement : string;  (** requirement *)
  condition :
    aws_wafv2_web_acl_logging_configuration__logging_filter__filter__condition
    list;
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration__logging_filter__filter *)

type aws_wafv2_web_acl_logging_configuration__logging_filter = {
  default_behavior : string;  (** default_behavior *)
  filter :
    aws_wafv2_web_acl_logging_configuration__logging_filter__filter
    list;
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration__logging_filter *)

type aws_wafv2_web_acl_logging_configuration__redacted_fields__method =
  unit
[@@deriving yojson_of]

type aws_wafv2_web_acl_logging_configuration__redacted_fields__query_string =
  unit
[@@deriving yojson_of]

type aws_wafv2_web_acl_logging_configuration__redacted_fields__single_header = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration__redacted_fields__single_header *)

type aws_wafv2_web_acl_logging_configuration__redacted_fields__uri_path =
  unit
[@@deriving yojson_of]

type aws_wafv2_web_acl_logging_configuration__redacted_fields = {
  method_ :
    aws_wafv2_web_acl_logging_configuration__redacted_fields__method
    list;
  query_string :
    aws_wafv2_web_acl_logging_configuration__redacted_fields__query_string
    list;
  single_header :
    aws_wafv2_web_acl_logging_configuration__redacted_fields__single_header
    list;
  uri_path :
    aws_wafv2_web_acl_logging_configuration__redacted_fields__uri_path
    list;
}
[@@deriving yojson_of]
(** Parts of the request to exclude from logs *)

type aws_wafv2_web_acl_logging_configuration = {
  log_destination_configs : string list;
      (** AWS Kinesis Firehose Delivery Stream ARNs *)
  resource_arn : string;  (** AWS WebACL ARN *)
  logging_filter :
    aws_wafv2_web_acl_logging_configuration__logging_filter list;
  redacted_fields :
    aws_wafv2_web_acl_logging_configuration__redacted_fields list;
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration *)

let aws_wafv2_web_acl_logging_configuration ~log_destination_configs
    ~resource_arn ~logging_filter ~redacted_fields __resource_id =
  let __resource_type = "aws_wafv2_web_acl_logging_configuration" in
  let __resource =
    {
      log_destination_configs;
      resource_arn;
      logging_filter;
      redacted_fields;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_web_acl_logging_configuration __resource);
  ()
