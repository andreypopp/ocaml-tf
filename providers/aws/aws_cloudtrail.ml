(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudtrail__advanced_event_selector__field_selector = {
  ends_with : string prop list option; [@option]  (** ends_with *)
  equals : string prop list option; [@option]  (** equals *)
  field : string prop;  (** field *)
  not_ends_with : string prop list option; [@option]
      (** not_ends_with *)
  not_equals : string prop list option; [@option]  (** not_equals *)
  not_starts_with : string prop list option; [@option]
      (** not_starts_with *)
  starts_with : string prop list option; [@option]  (** starts_with *)
}
[@@deriving yojson_of]
(** aws_cloudtrail__advanced_event_selector__field_selector *)

type aws_cloudtrail__advanced_event_selector = {
  name : string prop option; [@option]  (** name *)
  field_selector :
    aws_cloudtrail__advanced_event_selector__field_selector list;
}
[@@deriving yojson_of]
(** aws_cloudtrail__advanced_event_selector *)

type aws_cloudtrail__event_selector__data_resource = {
  type_ : string prop; [@key "type"]  (** type *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_cloudtrail__event_selector__data_resource *)

type aws_cloudtrail__event_selector = {
  exclude_management_event_sources : string prop list option;
      [@option]
      (** exclude_management_event_sources *)
  include_management_events : bool prop option; [@option]
      (** include_management_events *)
  read_write_type : string prop option; [@option]
      (** read_write_type *)
  data_resource : aws_cloudtrail__event_selector__data_resource list;
}
[@@deriving yojson_of]
(** aws_cloudtrail__event_selector *)

type aws_cloudtrail__insight_selector = {
  insight_type : string prop;  (** insight_type *)
}
[@@deriving yojson_of]
(** aws_cloudtrail__insight_selector *)

type aws_cloudtrail = {
  cloud_watch_logs_group_arn : string prop option; [@option]
      (** cloud_watch_logs_group_arn *)
  cloud_watch_logs_role_arn : string prop option; [@option]
      (** cloud_watch_logs_role_arn *)
  enable_log_file_validation : bool prop option; [@option]
      (** enable_log_file_validation *)
  enable_logging : bool prop option; [@option]  (** enable_logging *)
  id : string prop option; [@option]  (** id *)
  include_global_service_events : bool prop option; [@option]
      (** include_global_service_events *)
  is_multi_region_trail : bool prop option; [@option]
      (** is_multi_region_trail *)
  is_organization_trail : bool prop option; [@option]
      (** is_organization_trail *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
  sns_topic_name : string prop option; [@option]
      (** sns_topic_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  advanced_event_selector :
    aws_cloudtrail__advanced_event_selector list;
  event_selector : aws_cloudtrail__event_selector list;
  insight_selector : aws_cloudtrail__insight_selector list;
}
[@@deriving yojson_of]
(** aws_cloudtrail *)

type t = {
  arn : string prop;
  cloud_watch_logs_group_arn : string prop;
  cloud_watch_logs_role_arn : string prop;
  enable_log_file_validation : bool prop;
  enable_logging : bool prop;
  home_region : string prop;
  id : string prop;
  include_global_service_events : bool prop;
  is_multi_region_trail : bool prop;
  is_organization_trail : bool prop;
  kms_key_id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  sns_topic_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_cloudtrail ?cloud_watch_logs_group_arn
    ?cloud_watch_logs_role_arn ?enable_log_file_validation
    ?enable_logging ?id ?include_global_service_events
    ?is_multi_region_trail ?is_organization_trail ?kms_key_id
    ?s3_key_prefix ?sns_topic_name ?tags ?tags_all ~name
    ~s3_bucket_name ~advanced_event_selector ~event_selector
    ~insight_selector __resource_id =
  let __resource_type = "aws_cloudtrail" in
  let __resource =
    ({
       cloud_watch_logs_group_arn;
       cloud_watch_logs_role_arn;
       enable_log_file_validation;
       enable_logging;
       id;
       include_global_service_events;
       is_multi_region_trail;
       is_organization_trail;
       kms_key_id;
       name;
       s3_bucket_name;
       s3_key_prefix;
       sns_topic_name;
       tags;
       tags_all;
       advanced_event_selector;
       event_selector;
       insight_selector;
     }
      : aws_cloudtrail)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudtrail __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cloud_watch_logs_group_arn =
         Prop.computed __resource_type __resource_id
           "cloud_watch_logs_group_arn";
       cloud_watch_logs_role_arn =
         Prop.computed __resource_type __resource_id
           "cloud_watch_logs_role_arn";
       enable_log_file_validation =
         Prop.computed __resource_type __resource_id
           "enable_log_file_validation";
       enable_logging =
         Prop.computed __resource_type __resource_id "enable_logging";
       home_region =
         Prop.computed __resource_type __resource_id "home_region";
       id = Prop.computed __resource_type __resource_id "id";
       include_global_service_events =
         Prop.computed __resource_type __resource_id
           "include_global_service_events";
       is_multi_region_trail =
         Prop.computed __resource_type __resource_id
           "is_multi_region_trail";
       is_organization_trail =
         Prop.computed __resource_type __resource_id
           "is_organization_trail";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       s3_bucket_name =
         Prop.computed __resource_type __resource_id "s3_bucket_name";
       s3_key_prefix =
         Prop.computed __resource_type __resource_id "s3_key_prefix";
       sns_topic_name =
         Prop.computed __resource_type __resource_id "sns_topic_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
