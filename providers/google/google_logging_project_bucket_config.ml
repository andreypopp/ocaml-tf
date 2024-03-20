(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cmek_settings = {
  kms_key_name : string prop;
      (** The resource name for the configured Cloud KMS key.
KMS key name format:
projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]
To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information. *)
}
[@@deriving yojson_of]
(** The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. *)

type index_configs = {
  field_path : string prop;  (** The LogEntry field path to index. *)
  type_ : string prop; [@key "type"]
      (** The type of data in this index
Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation]( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.
For example: jsonPayload.request.status *)
}
[@@deriving yojson_of]
(** A list of indexed fields and related configuration data. *)

type google_logging_project_bucket_config = {
  bucket_id : string prop;
      (** The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default. *)
  description : string prop option; [@option]
      (** An optional description for this bucket. *)
  enable_analytics : bool prop option; [@option]
      (** Enable log analytics for the bucket. Cannot be disabled once enabled. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the bucket. *)
  locked : bool prop option; [@option]
      (** Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty. *)
  project : string prop;
      (** The parent project that contains the logging bucket. *)
  retention_days : float prop option; [@option]
      (** Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. *)
  cmek_settings : cmek_settings list;
  index_configs : index_configs list;
}
[@@deriving yojson_of]
(** google_logging_project_bucket_config *)

let cmek_settings ~kms_key_name () : cmek_settings = { kms_key_name }

let index_configs ~field_path ~type_ () : index_configs =
  { field_path; type_ }

let google_logging_project_bucket_config ?description
    ?enable_analytics ?id ?locked ?retention_days ~bucket_id
    ~location ~project ~cmek_settings ~index_configs () :
    google_logging_project_bucket_config =
  {
    bucket_id;
    description;
    enable_analytics;
    id;
    location;
    locked;
    project;
    retention_days;
    cmek_settings;
    index_configs;
  }

type t = {
  bucket_id : string prop;
  description : string prop;
  enable_analytics : bool prop;
  id : string prop;
  lifecycle_state : string prop;
  location : string prop;
  locked : bool prop;
  name : string prop;
  project : string prop;
  retention_days : float prop;
}

let make ?description ?enable_analytics ?id ?locked ?retention_days
    ~bucket_id ~location ~project ~cmek_settings ~index_configs __id
    =
  let __type = "google_logging_project_bucket_config" in
  let __attrs =
    ({
       bucket_id = Prop.computed __type __id "bucket_id";
       description = Prop.computed __type __id "description";
       enable_analytics =
         Prop.computed __type __id "enable_analytics";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       location = Prop.computed __type __id "location";
       locked = Prop.computed __type __id "locked";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       retention_days = Prop.computed __type __id "retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_project_bucket_config
        (google_logging_project_bucket_config ?description
           ?enable_analytics ?id ?locked ?retention_days ~bucket_id
           ~location ~project ~cmek_settings ~index_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable_analytics ?id ?locked
    ?retention_days ~bucket_id ~location ~project ~cmek_settings
    ~index_configs __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable_analytics ?id ?locked ?retention_days
      ~bucket_id ~location ~project ~cmek_settings ~index_configs
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
