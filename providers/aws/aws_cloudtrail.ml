(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_event_selector__field_selector = {
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
(** advanced_event_selector__field_selector *)

type advanced_event_selector = {
  name : string prop option; [@option]  (** name *)
  field_selector : advanced_event_selector__field_selector list;
}
[@@deriving yojson_of]
(** advanced_event_selector *)

type event_selector__data_resource = {
  type_ : string prop; [@key "type"]  (** type *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** event_selector__data_resource *)

type event_selector = {
  exclude_management_event_sources : string prop list option;
      [@option]
      (** exclude_management_event_sources *)
  include_management_events : bool prop option; [@option]
      (** include_management_events *)
  read_write_type : string prop option; [@option]
      (** read_write_type *)
  data_resource : event_selector__data_resource list;
}
[@@deriving yojson_of]
(** event_selector *)

type insight_selector = {
  insight_type : string prop;  (** insight_type *)
}
[@@deriving yojson_of]
(** insight_selector *)

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
  advanced_event_selector : advanced_event_selector list;
  event_selector : event_selector list;
  insight_selector : insight_selector list;
}
[@@deriving yojson_of]
(** aws_cloudtrail *)

let advanced_event_selector__field_selector ?ends_with ?equals
    ?not_ends_with ?not_equals ?not_starts_with ?starts_with ~field
    () : advanced_event_selector__field_selector =
  {
    ends_with;
    equals;
    field;
    not_ends_with;
    not_equals;
    not_starts_with;
    starts_with;
  }

let advanced_event_selector ?name ~field_selector () :
    advanced_event_selector =
  { name; field_selector }

let event_selector__data_resource ~type_ ~values () :
    event_selector__data_resource =
  { type_; values }

let event_selector ?exclude_management_event_sources
    ?include_management_events ?read_write_type ~data_resource () :
    event_selector =
  {
    exclude_management_event_sources;
    include_management_events;
    read_write_type;
    data_resource;
  }

let insight_selector ~insight_type () : insight_selector =
  { insight_type }

let aws_cloudtrail ?cloud_watch_logs_group_arn
    ?cloud_watch_logs_role_arn ?enable_log_file_validation
    ?enable_logging ?id ?include_global_service_events
    ?is_multi_region_trail ?is_organization_trail ?kms_key_id
    ?s3_key_prefix ?sns_topic_name ?tags ?tags_all ~name
    ~s3_bucket_name ~advanced_event_selector ~event_selector
    ~insight_selector () : aws_cloudtrail =
  {
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

let make ?cloud_watch_logs_group_arn ?cloud_watch_logs_role_arn
    ?enable_log_file_validation ?enable_logging ?id
    ?include_global_service_events ?is_multi_region_trail
    ?is_organization_trail ?kms_key_id ?s3_key_prefix ?sns_topic_name
    ?tags ?tags_all ~name ~s3_bucket_name ~advanced_event_selector
    ~event_selector ~insight_selector __id =
  let __type = "aws_cloudtrail" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cloud_watch_logs_group_arn =
         Prop.computed __type __id "cloud_watch_logs_group_arn";
       cloud_watch_logs_role_arn =
         Prop.computed __type __id "cloud_watch_logs_role_arn";
       enable_log_file_validation =
         Prop.computed __type __id "enable_log_file_validation";
       enable_logging = Prop.computed __type __id "enable_logging";
       home_region = Prop.computed __type __id "home_region";
       id = Prop.computed __type __id "id";
       include_global_service_events =
         Prop.computed __type __id "include_global_service_events";
       is_multi_region_trail =
         Prop.computed __type __id "is_multi_region_trail";
       is_organization_trail =
         Prop.computed __type __id "is_organization_trail";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       s3_bucket_name = Prop.computed __type __id "s3_bucket_name";
       s3_key_prefix = Prop.computed __type __id "s3_key_prefix";
       sns_topic_name = Prop.computed __type __id "sns_topic_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudtrail
        (aws_cloudtrail ?cloud_watch_logs_group_arn
           ?cloud_watch_logs_role_arn ?enable_log_file_validation
           ?enable_logging ?id ?include_global_service_events
           ?is_multi_region_trail ?is_organization_trail ?kms_key_id
           ?s3_key_prefix ?sns_topic_name ?tags ?tags_all ~name
           ~s3_bucket_name ~advanced_event_selector ~event_selector
           ~insight_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?cloud_watch_logs_group_arn
    ?cloud_watch_logs_role_arn ?enable_log_file_validation
    ?enable_logging ?id ?include_global_service_events
    ?is_multi_region_trail ?is_organization_trail ?kms_key_id
    ?s3_key_prefix ?sns_topic_name ?tags ?tags_all ~name
    ~s3_bucket_name ~advanced_event_selector ~event_selector
    ~insight_selector __id =
  let (r : _ Tf_core.resource) =
    make ?cloud_watch_logs_group_arn ?cloud_watch_logs_role_arn
      ?enable_log_file_validation ?enable_logging ?id
      ?include_global_service_events ?is_multi_region_trail
      ?is_organization_trail ?kms_key_id ?s3_key_prefix
      ?sns_topic_name ?tags ?tags_all ~name ~s3_bucket_name
      ~advanced_event_selector ~event_selector ~insight_selector __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
