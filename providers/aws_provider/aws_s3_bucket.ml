(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket__cors_rule = {
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__cors_rule *)

type aws_s3_bucket__grant = {
  id : string prop option; [@option]  (** id *)
  permissions : string prop list;  (** permissions *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__grant *)

type aws_s3_bucket__lifecycle_rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__expiration *)

type aws_s3_bucket__lifecycle_rule__noncurrent_version_expiration = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__noncurrent_version_expiration *)

type aws_s3_bucket__lifecycle_rule__noncurrent_version_transition = {
  days : float prop option; [@option]  (** days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__noncurrent_version_transition *)

type aws_s3_bucket__lifecycle_rule__transition = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__lifecycle_rule__transition *)

type aws_s3_bucket__lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float prop option;
      [@option]
      (** abort_incomplete_multipart_upload_days *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
  target_bucket : string prop;  (** target_bucket *)
  target_prefix : string prop option; [@option]  (** target_prefix *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__logging *)

type aws_s3_bucket__object_lock_configuration__rule__default_retention = {
  days : float prop option; [@option]  (** days *)
  mode : string prop;  (** mode *)
  years : float prop option; [@option]  (** years *)
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
  object_lock_enabled : string prop option; [@option]
      (** object_lock_enabled *)
  rule : aws_s3_bucket__object_lock_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__object_lock_configuration *)

type aws_s3_bucket__replication_configuration__rules__destination__access_control_translation = {
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination__access_control_translation *)

type aws_s3_bucket__replication_configuration__rules__destination__metrics = {
  minutes : float prop option; [@option]  (** minutes *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination__metrics *)

type aws_s3_bucket__replication_configuration__rules__destination__replication_time = {
  minutes : float prop option; [@option]  (** minutes *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__destination__replication_time *)

type aws_s3_bucket__replication_configuration__rules__destination = {
  account_id : string prop option; [@option]  (** account_id *)
  bucket : string prop;  (** bucket *)
  replica_kms_key_id : string prop option; [@option]
      (** replica_kms_key_id *)
  storage_class : string prop option; [@option]  (** storage_class *)
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
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration__rules__filter *)

type aws_s3_bucket__replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects = {
  enabled : bool prop;  (** enabled *)
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
  delete_marker_replication_status : string prop option; [@option]
      (** delete_marker_replication_status *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  priority : float prop option; [@option]  (** priority *)
  status : string prop;  (** status *)
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
  role : string prop;  (** role *)
  rules : aws_s3_bucket__replication_configuration__rules list;
}
[@@deriving yojson_of]
(** aws_s3_bucket__replication_configuration *)

type aws_s3_bucket__server_side_encryption_configuration__rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  sse_algorithm : string prop;  (** sse_algorithm *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__server_side_encryption_configuration__rule__apply_server_side_encryption_by_default *)

type aws_s3_bucket__server_side_encryption_configuration__rule = {
  bucket_key_enabled : bool prop option; [@option]
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__timeouts *)

type aws_s3_bucket__versioning = {
  enabled : bool prop option; [@option]  (** enabled *)
  mfa_delete : bool prop option; [@option]  (** mfa_delete *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__versioning *)

type aws_s3_bucket__website = {
  error_document : string prop option; [@option]
      (** error_document *)
  index_document : string prop option; [@option]
      (** index_document *)
  redirect_all_requests_to : string prop option; [@option]
      (** redirect_all_requests_to *)
  routing_rules : string prop option; [@option]  (** routing_rules *)
}
[@@deriving yojson_of]
(** aws_s3_bucket__website *)

type aws_s3_bucket = {
  acceleration_status : string prop option; [@option]
      (** acceleration_status *)
  acl : string prop option; [@option]  (** acl *)
  bucket : string prop option; [@option]  (** bucket *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  object_lock_enabled : bool prop option; [@option]
      (** object_lock_enabled *)
  policy : string prop option; [@option]  (** policy *)
  request_payer : string prop option; [@option]  (** request_payer *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
