(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_event_selector__field_selector = {
  ends_with : string prop list option; [@option]
  equals : string prop list option; [@option]
  field : string prop;
  not_ends_with : string prop list option; [@option]
  not_equals : string prop list option; [@option]
  not_starts_with : string prop list option; [@option]
  starts_with : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_event_selector__field_selector) -> ()

let yojson_of_advanced_event_selector__field_selector =
  (function
   | {
       ends_with = v_ends_with;
       equals = v_equals;
       field = v_field;
       not_ends_with = v_not_ends_with;
       not_equals = v_not_equals;
       not_starts_with = v_not_starts_with;
       starts_with = v_starts_with;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_starts_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "starts_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_starts_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_starts_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_equals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_ends_with", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
       in
       let bnds =
         match v_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "equals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ends_with", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_event_selector__field_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_event_selector__field_selector

[@@@deriving.end]

type advanced_event_selector = {
  name : string prop option; [@option]
  field_selector : advanced_event_selector__field_selector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_event_selector) -> ()

let yojson_of_advanced_event_selector =
  (function
   | { name = v_name; field_selector = v_field_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_event_selector__field_selector
             v_field_selector
         in
         ("field_selector", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_event_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_event_selector

[@@@deriving.end]

type event_selector__data_resource = {
  type_ : string prop; [@key "type"]
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_selector__data_resource) -> ()

let yojson_of_event_selector__data_resource =
  (function
   | { type_ = v_type_; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : event_selector__data_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_selector__data_resource

[@@@deriving.end]

type event_selector = {
  exclude_management_event_sources : string prop list option;
      [@option]
  include_management_events : bool prop option; [@option]
  read_write_type : string prop option; [@option]
  data_resource : event_selector__data_resource list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_selector) -> ()

let yojson_of_event_selector =
  (function
   | {
       exclude_management_event_sources =
         v_exclude_management_event_sources;
       include_management_events = v_include_management_events;
       read_write_type = v_read_write_type;
       data_resource = v_data_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_selector__data_resource
             v_data_resource
         in
         ("data_resource", arg) :: bnds
       in
       let bnds =
         match v_read_write_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read_write_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_management_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_management_events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_management_event_sources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_management_event_sources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_selector

[@@@deriving.end]

type insight_selector = { insight_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : insight_selector) -> ()

let yojson_of_insight_selector =
  (function
   | { insight_type = v_insight_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_insight_type in
         ("insight_type", arg) :: bnds
       in
       `Assoc bnds
    : insight_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_insight_selector

[@@@deriving.end]

type aws_cloudtrail = {
  cloud_watch_logs_group_arn : string prop option; [@option]
  cloud_watch_logs_role_arn : string prop option; [@option]
  enable_log_file_validation : bool prop option; [@option]
  enable_logging : bool prop option; [@option]
  id : string prop option; [@option]
  include_global_service_events : bool prop option; [@option]
  is_multi_region_trail : bool prop option; [@option]
  is_organization_trail : bool prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop option; [@option]
  sns_topic_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  advanced_event_selector : advanced_event_selector list;
  event_selector : event_selector list;
  insight_selector : insight_selector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudtrail) -> ()

let yojson_of_aws_cloudtrail =
  (function
   | {
       cloud_watch_logs_group_arn = v_cloud_watch_logs_group_arn;
       cloud_watch_logs_role_arn = v_cloud_watch_logs_role_arn;
       enable_log_file_validation = v_enable_log_file_validation;
       enable_logging = v_enable_logging;
       id = v_id;
       include_global_service_events =
         v_include_global_service_events;
       is_multi_region_trail = v_is_multi_region_trail;
       is_organization_trail = v_is_organization_trail;
       kms_key_id = v_kms_key_id;
       name = v_name;
       s3_bucket_name = v_s3_bucket_name;
       s3_key_prefix = v_s3_key_prefix;
       sns_topic_name = v_sns_topic_name;
       tags = v_tags;
       tags_all = v_tags_all;
       advanced_event_selector = v_advanced_event_selector;
       event_selector = v_event_selector;
       insight_selector = v_insight_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_insight_selector
             v_insight_selector
         in
         ("insight_selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_selector v_event_selector
         in
         ("event_selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_event_selector
             v_advanced_event_selector
         in
         ("advanced_event_selector", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sns_topic_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns_topic_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_organization_trail with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_organization_trail", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_multi_region_trail with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_multi_region_trail", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_global_service_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_global_service_events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_log_file_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_log_file_validation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_watch_logs_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_watch_logs_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_watch_logs_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_watch_logs_group_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudtrail -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudtrail

[@@@deriving.end]

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
    ?include_management_events ?read_write_type ?(data_resource = [])
    () : event_selector =
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
    ?s3_key_prefix ?sns_topic_name ?tags ?tags_all
    ?(advanced_event_selector = []) ?(event_selector = [])
    ?(insight_selector = []) ~name ~s3_bucket_name () :
    aws_cloudtrail =
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
  tf_name : string;
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
    ?tags ?tags_all ?(advanced_event_selector = [])
    ?(event_selector = []) ?(insight_selector = []) ~name
    ~s3_bucket_name __id =
  let __type = "aws_cloudtrail" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?s3_key_prefix ?sns_topic_name ?tags ?tags_all
           ~advanced_event_selector ~event_selector ~insight_selector
           ~name ~s3_bucket_name ());
    attrs = __attrs;
  }

let register ?tf_module ?cloud_watch_logs_group_arn
    ?cloud_watch_logs_role_arn ?enable_log_file_validation
    ?enable_logging ?id ?include_global_service_events
    ?is_multi_region_trail ?is_organization_trail ?kms_key_id
    ?s3_key_prefix ?sns_topic_name ?tags ?tags_all
    ?(advanced_event_selector = []) ?(event_selector = [])
    ?(insight_selector = []) ~name ~s3_bucket_name __id =
  let (r : _ Tf_core.resource) =
    make ?cloud_watch_logs_group_arn ?cloud_watch_logs_role_arn
      ?enable_log_file_validation ?enable_logging ?id
      ?include_global_service_events ?is_multi_region_trail
      ?is_organization_trail ?kms_key_id ?s3_key_prefix
      ?sns_topic_name ?tags ?tags_all ~advanced_event_selector
      ~event_selector ~insight_selector ~name ~s3_bucket_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
