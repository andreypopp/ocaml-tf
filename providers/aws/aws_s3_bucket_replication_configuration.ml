(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__delete_marker_replication = { status : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__delete_marker_replication) -> ()

let yojson_of_rule__delete_marker_replication =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : rule__delete_marker_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__delete_marker_replication

[@@@deriving.end]

type rule__destination__access_control_translation = {
  owner : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination__access_control_translation) -> ()

let yojson_of_rule__destination__access_control_translation =
  (function
   | { owner = v_owner } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       `Assoc bnds
    : rule__destination__access_control_translation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination__access_control_translation

[@@@deriving.end]

type rule__destination__encryption_configuration = {
  replica_kms_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination__encryption_configuration) -> ()

let yojson_of_rule__destination__encryption_configuration =
  (function
   | { replica_kms_key_id = v_replica_kms_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replica_kms_key_id
         in
         ("replica_kms_key_id", arg) :: bnds
       in
       `Assoc bnds
    : rule__destination__encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination__encryption_configuration

[@@@deriving.end]

type rule__destination__metrics__event_threshold = {
  minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination__metrics__event_threshold) -> ()

let yojson_of_rule__destination__metrics__event_threshold =
  (function
   | { minutes = v_minutes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       `Assoc bnds
    : rule__destination__metrics__event_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination__metrics__event_threshold

[@@@deriving.end]

type rule__destination__metrics = {
  status : string prop;
  event_threshold : rule__destination__metrics__event_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination__metrics) -> ()

let yojson_of_rule__destination__metrics =
  (function
   | { status = v_status; event_threshold = v_event_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_event_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__destination__metrics__event_threshold)
               v_event_threshold
           in
           let bnd = "event_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : rule__destination__metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination__metrics

[@@@deriving.end]

type rule__destination__replication_time__time = {
  minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination__replication_time__time) -> ()

let yojson_of_rule__destination__replication_time__time =
  (function
   | { minutes = v_minutes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       `Assoc bnds
    : rule__destination__replication_time__time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination__replication_time__time

[@@@deriving.end]

type rule__destination__replication_time = {
  status : string prop;
  time : rule__destination__replication_time__time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination__replication_time) -> ()

let yojson_of_rule__destination__replication_time =
  (function
   | { status = v_status; time = v_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__destination__replication_time__time)
               v_time
           in
           let bnd = "time", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : rule__destination__replication_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination__replication_time

[@@@deriving.end]

type rule__destination = {
  account : string prop option; [@option]
  bucket : string prop;
  storage_class : string prop option; [@option]
  access_control_translation :
    rule__destination__access_control_translation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_configuration :
    rule__destination__encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metrics : rule__destination__metrics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  replication_time : rule__destination__replication_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__destination) -> ()

let yojson_of_rule__destination =
  (function
   | {
       account = v_account;
       bucket = v_bucket;
       storage_class = v_storage_class;
       access_control_translation = v_access_control_translation;
       encryption_configuration = v_encryption_configuration;
       metrics = v_metrics;
       replication_time = v_replication_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_replication_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__destination__replication_time)
               v_replication_time
           in
           let bnd = "replication_time", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metrics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__destination__metrics)
               v_metrics
           in
           let bnd = "metrics", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__destination__encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_control_translation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__destination__access_control_translation)
               v_access_control_translation
           in
           let bnd = "access_control_translation", arg in
           bnd :: bnds
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         match v_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__destination

[@@@deriving.end]

type rule__existing_object_replication = { status : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__existing_object_replication) -> ()

let yojson_of_rule__existing_object_replication =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : rule__existing_object_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__existing_object_replication

[@@@deriving.end]

type rule__filter__and = {
  prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter__and) -> ()

let yojson_of_rule__filter__and =
  (function
   | { prefix = v_prefix; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__filter__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter__and

[@@@deriving.end]

type rule__filter__tag = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter__tag) -> ()

let yojson_of_rule__filter__tag =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__filter__tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter__tag

[@@@deriving.end]

type rule__filter = {
  prefix : string prop option; [@option]
  and_ : rule__filter__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
  tag : rule__filter__tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter) -> ()

let yojson_of_rule__filter =
  (function
   | { prefix = v_prefix; and_ = v_and_; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__filter__tag) v_tag
           in
           let bnd = "tag", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__filter__and) v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter

[@@@deriving.end]

type rule__source_selection_criteria__replica_modifications = {
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule__source_selection_criteria__replica_modifications) ->
  ()

let yojson_of_rule__source_selection_criteria__replica_modifications
    =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : rule__source_selection_criteria__replica_modifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule__source_selection_criteria__replica_modifications

[@@@deriving.end]

type rule__source_selection_criteria__sse_kms_encrypted_objects = {
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule__source_selection_criteria__sse_kms_encrypted_objects) ->
  ()

let yojson_of_rule__source_selection_criteria__sse_kms_encrypted_objects
    =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : rule__source_selection_criteria__sse_kms_encrypted_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule__source_selection_criteria__sse_kms_encrypted_objects

[@@@deriving.end]

type rule__source_selection_criteria = {
  replica_modifications :
    rule__source_selection_criteria__replica_modifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sse_kms_encrypted_objects :
    rule__source_selection_criteria__sse_kms_encrypted_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__source_selection_criteria) -> ()

let yojson_of_rule__source_selection_criteria =
  (function
   | {
       replica_modifications = v_replica_modifications;
       sse_kms_encrypted_objects = v_sse_kms_encrypted_objects;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sse_kms_encrypted_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__source_selection_criteria__sse_kms_encrypted_objects)
               v_sse_kms_encrypted_objects
           in
           let bnd = "sse_kms_encrypted_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_replica_modifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__source_selection_criteria__replica_modifications)
               v_replica_modifications
           in
           let bnd = "replica_modifications", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__source_selection_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__source_selection_criteria

[@@@deriving.end]

type rule = {
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  priority : float prop option; [@option]
  status : string prop;
  delete_marker_replication : rule__delete_marker_replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination : rule__destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  existing_object_replication :
    rule__existing_object_replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : rule__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_selection_criteria : rule__source_selection_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       id = v_id;
       prefix = v_prefix;
       priority = v_priority;
       status = v_status;
       delete_marker_replication = v_delete_marker_replication;
       destination = v_destination;
       existing_object_replication = v_existing_object_replication;
       filter = v_filter;
       source_selection_criteria = v_source_selection_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_selection_criteria then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__source_selection_criteria)
               v_source_selection_criteria
           in
           let bnd = "source_selection_criteria", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__filter) v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_existing_object_replication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__existing_object_replication)
               v_existing_object_replication
           in
           let bnd = "existing_object_replication", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_delete_marker_replication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__delete_marker_replication)
               v_delete_marker_replication
           in
           let bnd = "delete_marker_replication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_s3_bucket_replication_configuration = {
  bucket : string prop;
  id : string prop option; [@option]
  role : string prop;
  token : string prop option; [@option]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_replication_configuration) -> ()

let yojson_of_aws_s3_bucket_replication_configuration =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       role = v_role;
       token = v_token;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_replication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_replication_configuration

[@@@deriving.end]

let rule__delete_marker_replication ~status () :
    rule__delete_marker_replication =
  { status }

let rule__destination__access_control_translation ~owner () :
    rule__destination__access_control_translation =
  { owner }

let rule__destination__encryption_configuration ~replica_kms_key_id
    () : rule__destination__encryption_configuration =
  { replica_kms_key_id }

let rule__destination__metrics__event_threshold ~minutes () :
    rule__destination__metrics__event_threshold =
  { minutes }

let rule__destination__metrics ?(event_threshold = []) ~status () :
    rule__destination__metrics =
  { status; event_threshold }

let rule__destination__replication_time__time ~minutes () :
    rule__destination__replication_time__time =
  { minutes }

let rule__destination__replication_time ~status ~time () :
    rule__destination__replication_time =
  { status; time }

let rule__destination ?account ?storage_class
    ?(access_control_translation = [])
    ?(encryption_configuration = []) ?(metrics = [])
    ?(replication_time = []) ~bucket () : rule__destination =
  {
    account;
    bucket;
    storage_class;
    access_control_translation;
    encryption_configuration;
    metrics;
    replication_time;
  }

let rule__existing_object_replication ~status () :
    rule__existing_object_replication =
  { status }

let rule__filter__and ?prefix ?tags () : rule__filter__and =
  { prefix; tags }

let rule__filter__tag ~key ~value () : rule__filter__tag =
  { key; value }

let rule__filter ?prefix ?(and_ = []) ?(tag = []) () : rule__filter =
  { prefix; and_; tag }

let rule__source_selection_criteria__replica_modifications ~status ()
    : rule__source_selection_criteria__replica_modifications =
  { status }

let rule__source_selection_criteria__sse_kms_encrypted_objects
    ~status () :
    rule__source_selection_criteria__sse_kms_encrypted_objects =
  { status }

let rule__source_selection_criteria ?(replica_modifications = [])
    ?(sse_kms_encrypted_objects = []) () :
    rule__source_selection_criteria =
  { replica_modifications; sse_kms_encrypted_objects }

let rule ?id ?prefix ?priority ?(delete_marker_replication = [])
    ?(existing_object_replication = []) ?(filter = [])
    ?(source_selection_criteria = []) ~status ~destination () : rule
    =
  {
    id;
    prefix;
    priority;
    status;
    delete_marker_replication;
    destination;
    existing_object_replication;
    filter;
    source_selection_criteria;
  }

let aws_s3_bucket_replication_configuration ?id ?token ~bucket ~role
    ~rule () : aws_s3_bucket_replication_configuration =
  { bucket; id; role; token; rule }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  role : string prop;
  token : string prop;
}

let make ?id ?token ~bucket ~role ~rule __id =
  let __type = "aws_s3_bucket_replication_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       role = Prop.computed __type __id "role";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_replication_configuration
        (aws_s3_bucket_replication_configuration ?id ?token ~bucket
           ~role ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?token ~bucket ~role ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?token ~bucket ~role ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
