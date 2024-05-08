(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_config = {
  drop_unknown_fields : bool prop;
  table : string prop;
  use_table_schema : bool prop;
  use_topic_schema : bool prop;
  write_metadata : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_write_metadata in
         ("write_metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_topic_schema
         in
         ("use_topic_schema", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_table_schema
         in
         ("use_table_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_drop_unknown_fields
         in
         ("drop_unknown_fields", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_config

[@@@deriving.end]

type cloud_storage_config__avro_config = {
  write_metadata : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_write_metadata in
         ("write_metadata", arg) :: bnds
       in
       `Assoc bnds
    : cloud_storage_config__avro_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_storage_config__avro_config

[@@@deriving.end]

type cloud_storage_config = {
  avro_config : cloud_storage_config__avro_config list;
      [@default []] [@yojson_drop_default ( = )]
  bucket : string prop;
  filename_prefix : string prop;
  filename_suffix : string prop;
  max_bytes : float prop;
  max_duration : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_storage_config) -> ()

let yojson_of_cloud_storage_config =
  (function
   | {
       avro_config = v_avro_config;
       bucket = v_bucket;
       filename_prefix = v_filename_prefix;
       filename_suffix = v_filename_suffix;
       max_bytes = v_max_bytes;
       max_duration = v_max_duration;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_duration in
         ("max_duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_bytes in
         ("max_bytes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filename_suffix
         in
         ("filename_suffix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filename_prefix
         in
         ("filename_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         if [] = v_avro_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cloud_storage_config__avro_config)
               v_avro_config
           in
           let bnd = "avro_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cloud_storage_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_storage_config

[@@@deriving.end]

type dead_letter_policy = {
  dead_letter_topic : string prop;
  max_delivery_attempts : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_max_delivery_attempts
         in
         ("max_delivery_attempts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dead_letter_topic
         in
         ("dead_letter_topic", arg) :: bnds
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

type push_config__oidc_token = {
  audience : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_audience in
         ("audience", arg) :: bnds
       in
       `Assoc bnds
    : push_config__oidc_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_push_config__oidc_token

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

type push_config = {
  attributes : (string * string prop) list;
  no_wrapper : push_config__no_wrapper list;
      [@default []] [@yojson_drop_default ( = )]
  oidc_token : push_config__oidc_token list;
      [@default []] [@yojson_drop_default ( = )]
  push_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : push_config) -> ()

let yojson_of_push_config =
  (function
   | {
       attributes = v_attributes;
       no_wrapper = v_no_wrapper;
       oidc_token = v_oidc_token;
       push_endpoint = v_push_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_push_endpoint in
         ("push_endpoint", arg) :: bnds
       in
       let bnds =
         if [] = v_oidc_token then bnds
         else
           let arg =
             (yojson_of_list yojson_of_push_config__oidc_token)
               v_oidc_token
           in
           let bnd = "oidc_token", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_no_wrapper then bnds
         else
           let arg =
             (yojson_of_list yojson_of_push_config__no_wrapper)
               v_no_wrapper
           in
           let bnd = "no_wrapper", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_attributes
         in
         ("attributes", arg) :: bnds
       in
       `Assoc bnds
    : push_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_push_config

[@@@deriving.end]

type retry_policy = {
  maximum_backoff : string prop;
  minimum_backoff : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_minimum_backoff
         in
         ("minimum_backoff", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maximum_backoff
         in
         ("maximum_backoff", arg) :: bnds
       in
       `Assoc bnds
    : retry_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_policy

[@@@deriving.end]

type google_pubsub_subscription = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_subscription) -> ()

let yojson_of_google_pubsub_subscription =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_pubsub_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_subscription

[@@@deriving.end]

let google_pubsub_subscription ?id ?project ~name () :
    google_pubsub_subscription =
  { id; name; project }

type t = {
  tf_name : string;
  ack_deadline_seconds : float prop;
  bigquery_config : bigquery_config list prop;
  cloud_storage_config : cloud_storage_config list prop;
  dead_letter_policy : dead_letter_policy list prop;
  effective_labels : (string * string) list prop;
  enable_exactly_once_delivery : bool prop;
  enable_message_ordering : bool prop;
  expiration_policy : expiration_policy list prop;
  filter : string prop;
  id : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  push_config : push_config list prop;
  retain_acked_messages : bool prop;
  retry_policy : retry_policy list prop;
  terraform_labels : (string * string) list prop;
  topic : string prop;
}

let make ?id ?project ~name __id =
  let __type = "google_pubsub_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       ack_deadline_seconds =
         Prop.computed __type __id "ack_deadline_seconds";
       bigquery_config = Prop.computed __type __id "bigquery_config";
       cloud_storage_config =
         Prop.computed __type __id "cloud_storage_config";
       dead_letter_policy =
         Prop.computed __type __id "dead_letter_policy";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_exactly_once_delivery =
         Prop.computed __type __id "enable_exactly_once_delivery";
       enable_message_ordering =
         Prop.computed __type __id "enable_message_ordering";
       expiration_policy =
         Prop.computed __type __id "expiration_policy";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       message_retention_duration =
         Prop.computed __type __id "message_retention_duration";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       push_config = Prop.computed __type __id "push_config";
       retain_acked_messages =
         Prop.computed __type __id "retain_acked_messages";
       retry_policy = Prop.computed __type __id "retry_policy";
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
        (google_pubsub_subscription ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
