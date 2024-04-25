(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_config = {
  drop_unknown_fields : bool prop option; [@option]
  table : string prop;
  use_table_schema : bool prop option; [@option]
  use_topic_schema : bool prop option; [@option]
  write_metadata : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_config) -> ()

let yojson_of_bigquery_config =
  (function
   | {
       drop_unknown_fields = v_drop_unknown_fields;
       table = v_table;
       use_table_schema = v_use_table_schema;
       use_topic_schema = v_use_topic_schema;
       write_metadata = v_write_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_topic_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_topic_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_table_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_table_schema", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       let bnds =
         match v_drop_unknown_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "drop_unknown_fields", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bigquery_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_config

[@@@deriving.end]

type cloud_storage_config__avro_config = {
  write_metadata : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_storage_config__avro_config) -> ()

let yojson_of_cloud_storage_config__avro_config =
  (function
   | { write_metadata = v_write_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write_metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloud_storage_config__avro_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_storage_config__avro_config

[@@@deriving.end]

type cloud_storage_config = {
  bucket : string prop;
  filename_prefix : string prop option; [@option]
  filename_suffix : string prop option; [@option]
  max_bytes : float prop option; [@option]
  max_duration : string prop option; [@option]
  avro_config : cloud_storage_config__avro_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_storage_config) -> ()

let yojson_of_cloud_storage_config =
  (function
   | {
       bucket = v_bucket;
       filename_prefix = v_filename_prefix;
       filename_suffix = v_filename_suffix;
       max_bytes = v_max_bytes;
       max_duration = v_max_duration;
       avro_config = v_avro_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloud_storage_config__avro_config
             v_avro_config
         in
         ("avro_config", arg) :: bnds
       in
       let bnds =
         match v_max_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filename_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filename_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : cloud_storage_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_storage_config

[@@@deriving.end]

type dead_letter_policy = {
  dead_letter_topic : string prop option; [@option]
  max_delivery_attempts : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dead_letter_policy) -> ()

let yojson_of_dead_letter_policy =
  (function
   | {
       dead_letter_topic = v_dead_letter_topic;
       max_delivery_attempts = v_max_delivery_attempts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_delivery_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delivery_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dead_letter_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dead_letter_topic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dead_letter_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dead_letter_policy

[@@@deriving.end]

type expiration_policy = { ttl : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : expiration_policy) -> ()

let yojson_of_expiration_policy =
  (function
   | { ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ttl in
         ("ttl", arg) :: bnds
       in
       `Assoc bnds
    : expiration_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_expiration_policy

[@@@deriving.end]

type push_config__no_wrapper = { write_metadata : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : push_config__no_wrapper) -> ()

let yojson_of_push_config__no_wrapper =
  (function
   | { write_metadata = v_write_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_write_metadata in
         ("write_metadata", arg) :: bnds
       in
       `Assoc bnds
    : push_config__no_wrapper -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_push_config__no_wrapper

[@@@deriving.end]

type push_config__oidc_token = {
  audience : string prop option; [@option]
  service_account_email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : push_config__oidc_token) -> ()

let yojson_of_push_config__oidc_token =
  (function
   | {
       audience = v_audience;
       service_account_email = v_service_account_email;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : push_config__oidc_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_push_config__oidc_token

[@@@deriving.end]

type push_config = {
  attributes : (string * string prop) list option; [@option]
  push_endpoint : string prop;
  no_wrapper : push_config__no_wrapper list;
  oidc_token : push_config__oidc_token list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : push_config) -> ()

let yojson_of_push_config =
  (function
   | {
       attributes = v_attributes;
       push_endpoint = v_push_endpoint;
       no_wrapper = v_no_wrapper;
       oidc_token = v_oidc_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_push_config__oidc_token
             v_oidc_token
         in
         ("oidc_token", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_push_config__no_wrapper
             v_no_wrapper
         in
         ("no_wrapper", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_push_endpoint in
         ("push_endpoint", arg) :: bnds
       in
       let bnds =
         match v_attributes with
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
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : push_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_push_config

[@@@deriving.end]

type retry_policy = {
  maximum_backoff : string prop option; [@option]
  minimum_backoff : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_policy) -> ()

let yojson_of_retry_policy =
  (function
   | {
       maximum_backoff = v_maximum_backoff;
       minimum_backoff = v_minimum_backoff;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_minimum_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_backoff", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_backoff", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retry_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_pubsub_subscription = {
  ack_deadline_seconds : float prop option; [@option]
  enable_exactly_once_delivery : bool prop option; [@option]
  enable_message_ordering : bool prop option; [@option]
  filter : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  message_retention_duration : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  retain_acked_messages : bool prop option; [@option]
  topic : string prop;
  bigquery_config : bigquery_config list;
  cloud_storage_config : cloud_storage_config list;
  dead_letter_policy : dead_letter_policy list;
  expiration_policy : expiration_policy list;
  push_config : push_config list;
  retry_policy : retry_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_subscription) -> ()

let yojson_of_google_pubsub_subscription =
  (function
   | {
       ack_deadline_seconds = v_ack_deadline_seconds;
       enable_exactly_once_delivery = v_enable_exactly_once_delivery;
       enable_message_ordering = v_enable_message_ordering;
       filter = v_filter;
       id = v_id;
       labels = v_labels;
       message_retention_duration = v_message_retention_duration;
       name = v_name;
       project = v_project;
       retain_acked_messages = v_retain_acked_messages;
       topic = v_topic;
       bigquery_config = v_bigquery_config;
       cloud_storage_config = v_cloud_storage_config;
       dead_letter_policy = v_dead_letter_policy;
       expiration_policy = v_expiration_policy;
       push_config = v_push_config;
       retry_policy = v_retry_policy;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retry_policy v_retry_policy
         in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_push_config v_push_config
         in
         ("push_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_expiration_policy
             v_expiration_policy
         in
         ("expiration_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dead_letter_policy
             v_dead_letter_policy
         in
         ("dead_letter_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloud_storage_config
             v_cloud_storage_config
         in
         ("cloud_storage_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bigquery_config v_bigquery_config
         in
         ("bigquery_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         match v_retain_acked_messages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_acked_messages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_message_retention_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_retention_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_message_ordering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_message_ordering", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_exactly_once_delivery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_exactly_once_delivery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ack_deadline_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ack_deadline_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_pubsub_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_subscription

[@@@deriving.end]

let bigquery_config ?drop_unknown_fields ?use_table_schema
    ?use_topic_schema ?write_metadata ~table () : bigquery_config =
  {
    drop_unknown_fields;
    table;
    use_table_schema;
    use_topic_schema;
    write_metadata;
  }

let cloud_storage_config__avro_config ?write_metadata () :
    cloud_storage_config__avro_config =
  { write_metadata }

let cloud_storage_config ?filename_prefix ?filename_suffix ?max_bytes
    ?max_duration ?(avro_config = []) ~bucket () :
    cloud_storage_config =
  {
    bucket;
    filename_prefix;
    filename_suffix;
    max_bytes;
    max_duration;
    avro_config;
  }

let dead_letter_policy ?dead_letter_topic ?max_delivery_attempts () :
    dead_letter_policy =
  { dead_letter_topic; max_delivery_attempts }

let expiration_policy ~ttl () : expiration_policy = { ttl }

let push_config__no_wrapper ~write_metadata () :
    push_config__no_wrapper =
  { write_metadata }

let push_config__oidc_token ?audience ~service_account_email () :
    push_config__oidc_token =
  { audience; service_account_email }

let push_config ?attributes ?(no_wrapper = []) ?(oidc_token = [])
    ~push_endpoint () : push_config =
  { attributes; push_endpoint; no_wrapper; oidc_token }

let retry_policy ?maximum_backoff ?minimum_backoff () : retry_policy
    =
  { maximum_backoff; minimum_backoff }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_subscription ?ack_deadline_seconds
    ?enable_exactly_once_delivery ?enable_message_ordering ?filter
    ?id ?labels ?message_retention_duration ?project
    ?retain_acked_messages ?(bigquery_config = [])
    ?(cloud_storage_config = []) ?(dead_letter_policy = [])
    ?(expiration_policy = []) ?(push_config = [])
    ?(retry_policy = []) ?timeouts ~name ~topic () :
    google_pubsub_subscription =
  {
    ack_deadline_seconds;
    enable_exactly_once_delivery;
    enable_message_ordering;
    filter;
    id;
    labels;
    message_retention_duration;
    name;
    project;
    retain_acked_messages;
    topic;
    bigquery_config;
    cloud_storage_config;
    dead_letter_policy;
    expiration_policy;
    push_config;
    retry_policy;
    timeouts;
  }

type t = {
  ack_deadline_seconds : float prop;
  effective_labels : (string * string) list prop;
  enable_exactly_once_delivery : bool prop;
  enable_message_ordering : bool prop;
  filter : string prop;
  id : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  retain_acked_messages : bool prop;
  terraform_labels : (string * string) list prop;
  topic : string prop;
}

let make ?ack_deadline_seconds ?enable_exactly_once_delivery
    ?enable_message_ordering ?filter ?id ?labels
    ?message_retention_duration ?project ?retain_acked_messages
    ?(bigquery_config = []) ?(cloud_storage_config = [])
    ?(dead_letter_policy = []) ?(expiration_policy = [])
    ?(push_config = []) ?(retry_policy = []) ?timeouts ~name ~topic
    __id =
  let __type = "google_pubsub_subscription" in
  let __attrs =
    ({
       ack_deadline_seconds =
         Prop.computed __type __id "ack_deadline_seconds";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_exactly_once_delivery =
         Prop.computed __type __id "enable_exactly_once_delivery";
       enable_message_ordering =
         Prop.computed __type __id "enable_message_ordering";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       message_retention_duration =
         Prop.computed __type __id "message_retention_duration";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       retain_acked_messages =
         Prop.computed __type __id "retain_acked_messages";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       topic = Prop.computed __type __id "topic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_subscription
        (google_pubsub_subscription ?ack_deadline_seconds
           ?enable_exactly_once_delivery ?enable_message_ordering
           ?filter ?id ?labels ?message_retention_duration ?project
           ?retain_acked_messages ~bigquery_config
           ~cloud_storage_config ~dead_letter_policy
           ~expiration_policy ~push_config ~retry_policy ?timeouts
           ~name ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?ack_deadline_seconds
    ?enable_exactly_once_delivery ?enable_message_ordering ?filter
    ?id ?labels ?message_retention_duration ?project
    ?retain_acked_messages ?(bigquery_config = [])
    ?(cloud_storage_config = []) ?(dead_letter_policy = [])
    ?(expiration_policy = []) ?(push_config = [])
    ?(retry_policy = []) ?timeouts ~name ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?ack_deadline_seconds ?enable_exactly_once_delivery
      ?enable_message_ordering ?filter ?id ?labels
      ?message_retention_duration ?project ?retain_acked_messages
      ~bigquery_config ~cloud_storage_config ~dead_letter_policy
      ~expiration_policy ~push_config ~retry_policy ?timeouts ~name
      ~topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
