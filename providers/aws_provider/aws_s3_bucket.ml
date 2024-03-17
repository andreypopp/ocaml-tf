(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket__cors_rule = {
  allowed_headers : string list option; [@option]
      (** allowed_headers *)
  allowed_methods : string list;  (** allowed_methods *)
  allowed_origins : string list;  (** allowed_origins *)
  expose_headers : string list option; [@option]
      (** expose_headers *)
  max_age_seconds : float option; [@option]  (** max_age_seconds *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__cors_rule *)

type aws_s3_bucket__grant = {
  id : string option; [@option]  (** id *)
  permissions : string list;  (** permissions *)
  type_ : string; [@key "type"]  (** type *)
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__grant *)

type aws_s3_bucket__lifecycle_rule__expiration = {
  date : string option; [@option]  (** date *)
  days : float option; [@option]  (** days *)
  expired_object_delete_marker : bool option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__expiration *)

type aws_s3_bucket__lifecycle_rule__noncurrent_version_expiration = {
  days : float option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__noncurrent_version_expiration *)

type aws_s3_bucket__lifecycle_rule__noncurrent_version_transition = {
  days : float option; [@option]  (** days *)
  storage_class : string;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__noncurrent_version_transition *)

type aws_s3_bucket__lifecycle_rule__transition = {
  date : string option; [@option]  (** date *)
  days : float option; [@option]  (** days *)
  storage_class : string;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__transition *)

type aws_s3_bucket__lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float option; [@option]
      (** abort_incomplete_multipart_upload_days *)
  enabled : bool;  (** enabled *)
  id : string option; [@option]  (** id *)
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
  expiration : aws_s3_bucket__lifecycle_rule__expiration list;
  noncurrent_version_expiration :
    aws_s3_bucket__lifecycle_rule__noncurrent_version_expiration list;
  noncurrent_version_transition :
    aws_s3_bucket__lifecycle_rule__noncurrent_version_transition list;
  transition : aws_s3_bucket__lifecycle_rule__transition list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule *)

type aws_s3_bucket__logging = {
  target_bucket : string;  (** target_bucket *)
  target_prefix : string option; [@option]  (** target_prefix *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__logging *)

type aws_s3_bucket__object_lock_configuration__rule__default_retention = {
  days : float option; [@option]  (** days *)
  mode : string;  (** mode *)
  years : float option; [@option]  (** years *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__object_lock_configuration__rule__default_retention *)

type aws_s3_bucket__object_lock_configuration__rule = {
  default_retention :
    aws_s3_bucket__object_lock_configuration__rule__default_retention
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__object_lock_configuration__rule *)

type aws_s3_bucket__object_lock_configuration = {
  object_lock_enabled : string option; [@option]
      (** object_lock_enabled *)
  rule : aws_s3_bucket__object_lock_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__object_lock_configuration *)

type aws_s3_bucket__replication_configuration__rules__destination__access_control_translation = {
  owner : string;  (** owner *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination__access_control_translation *)

type aws_s3_bucket__replication_configuration__rules__destination__metrics = {
  minutes : float option; [@option]  (** minutes *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination__metrics *)

type aws_s3_bucket__replication_configuration__rules__destination__replication_time = {
  minutes : float option; [@option]  (** minutes *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination__replication_time *)

type aws_s3_bucket__replication_configuration__rules__destination = {
  account_id : string option; [@option]  (** account_id *)
  bucket : string;  (** bucket *)
  replica_kms_key_id : string option; [@option]
      (** replica_kms_key_id *)
  storage_class : string option; [@option]  (** storage_class *)
  access_control_translation :
    aws_s3_bucket__replication_configuration__rules__destination__access_control_translation
    list;
  metrics :
    aws_s3_bucket__replication_configuration__rules__destination__metrics
    list;
  replication_time :
    aws_s3_bucket__replication_configuration__rules__destination__replication_time
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination *)

type aws_s3_bucket__replication_configuration__rules__filter = {
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__filter *)

type aws_s3_bucket__replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects *)

type aws_s3_bucket__replication_configuration__rules__source_selection_criteria = {
  sse_kms_encrypted_objects :
    aws_s3_bucket__replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__source_selection_criteria *)

type aws_s3_bucket__replication_configuration__rules = {
  delete_marker_replication_status : string option; [@option]
      (** delete_marker_replication_status *)
  id : string option; [@option]  (** id *)
  prefix : string option; [@option]  (** prefix *)
  priority : float option; [@option]  (** priority *)
  status : string;  (** status *)
  destination :
    aws_s3_bucket__replication_configuration__rules__destination list;
  filter :
    aws_s3_bucket__replication_configuration__rules__filter list;
  source_selection_criteria :
    aws_s3_bucket__replication_configuration__rules__source_selection_criteria
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules *)

type aws_s3_bucket__replication_configuration = {
  role : string;  (** role *)
  rules : aws_s3_bucket__replication_configuration__rules list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration *)

type aws_s3_bucket__server_side_encryption_configuration__rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string option; [@option]
      (** kms_master_key_id *)
  sse_algorithm : string;  (** sse_algorithm *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__server_side_encryption_configuration__rule__apply_server_side_encryption_by_default *)

type aws_s3_bucket__server_side_encryption_configuration__rule = {
  bucket_key_enabled : bool option; [@option]
      (** bucket_key_enabled *)
  apply_server_side_encryption_by_default :
    aws_s3_bucket__server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__server_side_encryption_configuration__rule *)

type aws_s3_bucket__server_side_encryption_configuration = {
  rule :
    aws_s3_bucket__server_side_encryption_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__server_side_encryption_configuration *)

type aws_s3_bucket__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__timeouts *)

type aws_s3_bucket__versioning = {
  enabled : bool option; [@option]  (** enabled *)
  mfa_delete : bool option; [@option]  (** mfa_delete *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__versioning *)

type aws_s3_bucket__website = {
  error_document : string option; [@option]  (** error_document *)
  index_document : string option; [@option]  (** index_document *)
  redirect_all_requests_to : string option; [@option]
      (** redirect_all_requests_to *)
  routing_rules : string option; [@option]  (** routing_rules *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__website *)

type aws_s3_bucket = {
  acceleration_status : string option; [@option]
      (** acceleration_status *)
  acl : string option; [@option]  (** acl *)
  bucket : string option; [@option]  (** bucket *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  id : string option; [@option]  (** id *)
  object_lock_enabled : bool option; [@option]
      (** object_lock_enabled *)
  policy : string option; [@option]  (** policy *)
  request_payer : string option; [@option]  (** request_payer *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  cors_rule : aws_s3_bucket__cors_rule list;
  grant : aws_s3_bucket__grant list;
  lifecycle_rule : aws_s3_bucket__lifecycle_rule list;
  logging : aws_s3_bucket__logging list;
  object_lock_configuration :
    aws_s3_bucket__object_lock_configuration list;
  replication_configuration :
    aws_s3_bucket__replication_configuration list;
  server_side_encryption_configuration :
    aws_s3_bucket__server_side_encryption_configuration list;
  timeouts : aws_s3_bucket__timeouts option;
  versioning : aws_s3_bucket__versioning list;
  website : aws_s3_bucket__website list;
}
[@@deriving yojson_of]
(** aws_s3_bucket *)

let aws_s3_bucket ?acceleration_status ?acl ?bucket ?bucket_prefix
    ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
    ?tags ?tags_all ?timeouts ~cors_rule ~grant ~lifecycle_rule
    ~logging ~object_lock_configuration ~replication_configuration
    ~server_side_encryption_configuration ~versioning ~website
    __resource_id =
  let __resource_type = "aws_s3_bucket" in
  let __resource =
    {
      acceleration_status;
      acl;
      bucket;
      bucket_prefix;
      force_destroy;
      id;
      object_lock_enabled;
      policy;
      request_payer;
      tags;
      tags_all;
      cors_rule;
      grant;
      lifecycle_rule;
      logging;
      object_lock_configuration;
      replication_configuration;
      server_side_encryption_configuration;
      timeouts;
      versioning;
      website;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket __resource);
  ()
