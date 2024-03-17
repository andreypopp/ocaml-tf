(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_folder_bucket_config__cmek_settings = {
  kms_key_name : string prop;
      (** The resource name for the configured Cloud KMS key.
KMS key name format:
projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]
To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information. *)
  kms_key_version_name : string prop;
      (** The CryptoKeyVersion resource name for the configured Cloud KMS key.
KMS key name format:
projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]
For example:
projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/cryptoKeyVersions/1
This is a read-only field used to convey the specific configured CryptoKeyVersion of kms_key that has been configured. It will be populated in cases where the CMEK settings are bound to a single key version. *)
  name : string prop;  (** The resource name of the CMEK settings. *)
  service_account_id : string prop;
      (** The service account associated with a project for which CMEK will apply.
Before enabling CMEK for a logging bucket, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account associated with the project for which CMEK will apply. Use [v2.getCmekSettings](https://cloud.google.com/logging/docs/reference/v2/rest/v2/TopLevel/getCmekSettings#google.logging.v2.ConfigServiceV2.GetCmekSettings) to obtain the service account ID.
See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information. *)
}
[@@deriving yojson_of]
(** The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. *)

type google_logging_folder_bucket_config__index_configs = {
  field_path : string prop;  (** The LogEntry field path to index. *)
  type_ : string prop; [@key "type"]
      (** The type of data in this index
Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation]( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.
For example: jsonPayload.request.status *)
}
[@@deriving yojson_of]
(** A list of indexed fields and related configuration data. *)

type google_logging_folder_bucket_config = {
  bucket_id : string prop;
      (** The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default. *)
  description : string prop option; [@option]
      (** An optional description for this bucket. *)
  folder : string prop;
      (** The parent resource that contains the logging bucket. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the bucket. *)
  retention_days : float prop option; [@option]
      (** Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. *)
  cmek_settings :
    google_logging_folder_bucket_config__cmek_settings list;
  index_configs :
    google_logging_folder_bucket_config__index_configs list;
}
[@@deriving yojson_of]
(** google_logging_folder_bucket_config *)

let google_logging_folder_bucket_config ?description ?id
    ?retention_days ~bucket_id ~folder ~location ~cmek_settings
    ~index_configs __resource_id =
  let __resource_type = "google_logging_folder_bucket_config" in
  let __resource =
    {
      bucket_id;
      description;
      folder;
      id;
      location;
      retention_days;
      cmek_settings;
      index_configs;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_folder_bucket_config __resource);
  ()
