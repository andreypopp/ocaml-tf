(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudtrail__advanced_event_selector__field_selector = {
  ends_with : string list option; [@option]  (** ends_with *)
  equals : string list option; [@option]  (** equals *)
  field : string;  (** field *)
  not_ends_with : string list option; [@option]  (** not_ends_with *)
  not_equals : string list option; [@option]  (** not_equals *)
  not_starts_with : string list option; [@option]
      (** not_starts_with *)
  starts_with : string list option; [@option]  (** starts_with *)
}
[@@deriving yojson_of]
(** aws_cloudtrail__advanced_event_selector__field_selector *)

type aws_cloudtrail__advanced_event_selector = {
  name : string option; [@option]  (** name *)
  field_selector :
    aws_cloudtrail__advanced_event_selector__field_selector list;
}
[@@deriving yojson_of]
(** aws_cloudtrail__advanced_event_selector *)

type aws_cloudtrail__event_selector__data_resource = {
  type_ : string; [@key "type"]  (** type *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_cloudtrail__event_selector__data_resource *)

type aws_cloudtrail__event_selector = {
  exclude_management_event_sources : string list option; [@option]
      (** exclude_management_event_sources *)
  include_management_events : bool option; [@option]
      (** include_management_events *)
  read_write_type : string option; [@option]  (** read_write_type *)
  data_resource : aws_cloudtrail__event_selector__data_resource list;
}
[@@deriving yojson_of]
(** aws_cloudtrail__event_selector *)

type aws_cloudtrail__insight_selector = {
  insight_type : string;  (** insight_type *)
}
[@@deriving yojson_of]
(** aws_cloudtrail__insight_selector *)

type aws_cloudtrail = {
  cloud_watch_logs_group_arn : string option; [@option]
      (** cloud_watch_logs_group_arn *)
  cloud_watch_logs_role_arn : string option; [@option]
      (** cloud_watch_logs_role_arn *)
  enable_log_file_validation : bool option; [@option]
      (** enable_log_file_validation *)
  enable_logging : bool option; [@option]  (** enable_logging *)
  include_global_service_events : bool option; [@option]
      (** include_global_service_events *)
  is_multi_region_trail : bool option; [@option]
      (** is_multi_region_trail *)
  is_organization_trail : bool option; [@option]
      (** is_organization_trail *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
  sns_topic_name : string option; [@option]  (** sns_topic_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  advanced_event_selector :
    aws_cloudtrail__advanced_event_selector list;
  event_selector : aws_cloudtrail__event_selector list;
  insight_selector : aws_cloudtrail__insight_selector list;
}
[@@deriving yojson_of]
(** aws_cloudtrail *)

let aws_cloudtrail ?cloud_watch_logs_group_arn
    ?cloud_watch_logs_role_arn ?enable_log_file_validation
    ?enable_logging ?include_global_service_events
    ?is_multi_region_trail ?is_organization_trail ?kms_key_id
    ?s3_key_prefix ?sns_topic_name ?tags ~name ~s3_bucket_name
    ~advanced_event_selector ~event_selector ~insight_selector
    __resource_id =
  let __resource_type = "aws_cloudtrail" in
  let __resource =
    {
      cloud_watch_logs_group_arn;
      cloud_watch_logs_role_arn;
      enable_log_file_validation;
      enable_logging;
      include_global_service_events;
      is_multi_region_trail;
      is_organization_trail;
      kms_key_id;
      name;
      s3_bucket_name;
      s3_key_prefix;
      sns_topic_name;
      tags;
      advanced_event_selector;
      event_selector;
      insight_selector;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudtrail __resource);
  ()
