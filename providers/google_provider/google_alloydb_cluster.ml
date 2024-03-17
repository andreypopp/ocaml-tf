(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_alloydb_cluster__automated_backup_policy__encryption_config = {
  kms_key_name : string option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type google_alloydb_cluster__automated_backup_policy__quantity_based_retention = {
  count : float option; [@option]
      (** The number of backups to retain. *)
}
[@@deriving yojson_of]
(** Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together. *)

type google_alloydb_cluster__automated_backup_policy__time_based_retention = {
  retention_period : string option; [@option]
      (** The retention period.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together. *)

type google_alloydb_cluster__automated_backup_policy__weekly_schedule__start_times = {
  hours : float option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float option; [@option]
      (** Minutes of hour of day. Currently, only the value 0 is supported. *)
  nanos : float option; [@option]
      (** Fractions of seconds in nanoseconds. Currently, only the value 0 is supported. *)
  seconds : float option; [@option]
      (** Seconds of minutes of the time. Currently, only the value 0 is supported. *)
}
[@@deriving yojson_of]
(** The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). *)

type google_alloydb_cluster__automated_backup_policy__weekly_schedule = {
  days_of_week : string list option; [@option]
      (** The days of the week to perform a backup. At least one day of the week must be provided. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  start_times :
    google_alloydb_cluster__automated_backup_policy__weekly_schedule__start_times
    list;
}
[@@deriving yojson_of]
(** Weekly schedule for the Backup. *)

type google_alloydb_cluster__automated_backup_policy = {
  backup_window : string option; [@option]
      (** The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.

The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  enabled : bool option; [@option]
      (** Whether automated backups are enabled. *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to backups created using this configuration. *)
  location : string option; [@option]
      (** The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. *)
  encryption_config :
    google_alloydb_cluster__automated_backup_policy__encryption_config
    list;
  quantity_based_retention :
    google_alloydb_cluster__automated_backup_policy__quantity_based_retention
    list;
  time_based_retention :
    google_alloydb_cluster__automated_backup_policy__time_based_retention
    list;
  weekly_schedule :
    google_alloydb_cluster__automated_backup_policy__weekly_schedule
    list;
}
[@@deriving yojson_of]
(** The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default. *)

type google_alloydb_cluster__continuous_backup_config__encryption_config = {
  kms_key_name : string option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type google_alloydb_cluster__continuous_backup_config = {
  enabled : bool option; [@option]
      (** Whether continuous backup recovery is enabled. If not set, defaults to true. *)
  recovery_window_days : float option; [@option]
      (** The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.

If not set, defaults to 14 days. *)
  encryption_config :
    google_alloydb_cluster__continuous_backup_config__encryption_config
    list;
}
[@@deriving yojson_of]
(** The continuous backup config for this cluster.

If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days. *)

type google_alloydb_cluster__encryption_config = {
  kms_key_name : string option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type google_alloydb_cluster__initial_user = {
  password : string;  (** The initial password for the user. *)
  user : string option; [@option]  (** The database username. *)
}
[@@deriving yojson_of]
(** Initial user to setup during cluster creation. *)

type google_alloydb_cluster__network_config = {
  allocated_ip_range : string option; [@option]
      (** The name of the allocated IP range for the private IP AlloyDB cluster. For example: google-managed-services-default.
If set, the instance IPs for this cluster will be created in the allocated range. *)
  network : string option; [@option]
      (** The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
It is specified in the form: projects/{projectNumber}/global/networks/{network_id}. *)
}
[@@deriving yojson_of]
(** Metadata related to network configuration. *)

type google_alloydb_cluster__restore_backup_source = {
  backup_name : string;
      (** The name of the backup that this cluster is restored from. *)
}
[@@deriving yojson_of]
(** The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together. *)

type google_alloydb_cluster__restore_continuous_backup_source = {
  cluster : string;
      (** The name of the source cluster that this cluster is restored from. *)
  point_in_time : string;
      (** The point in time that this cluster is restored to, in RFC 3339 format. *)
}
[@@deriving yojson_of]
(** The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together. *)

type google_alloydb_cluster__secondary_config = {
  primary_cluster_name : string;
      (** Name of the primary cluster must be in the format
'projects/{project}/locations/{location}/clusters/{cluster_id}' *)
}
[@@deriving yojson_of]
(** Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY. *)

type google_alloydb_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_alloydb_cluster__timeouts *)

type google_alloydb_cluster__backup_source = {
  backup_name : string;  (** backup_name *)
}
[@@deriving yojson_of]

type google_alloydb_cluster__continuous_backup_info__encryption_info = {
  encryption_type : string;  (** encryption_type *)
  kms_key_versions : string list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type google_alloydb_cluster__continuous_backup_info = {
  earliest_restorable_time : string;  (** earliest_restorable_time *)
  enabled_time : string;  (** enabled_time *)
  encryption_info :
    google_alloydb_cluster__continuous_backup_info__encryption_info
    list;
      (** encryption_info *)
  schedule : string list;  (** schedule *)
}
[@@deriving yojson_of]

type google_alloydb_cluster__encryption_info = {
  encryption_type : string;  (** encryption_type *)
  kms_key_versions : string list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type google_alloydb_cluster__migration_source = {
  host_port : string;  (** host_port *)
  reference_id : string;  (** reference_id *)
  source_type : string;  (** source_type *)
}
[@@deriving yojson_of]

type google_alloydb_cluster = {
  annotations : (string * string) list option; [@option]
      (** Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  cluster_id : string;  (** The ID of the alloydb cluster. *)
  cluster_type : string option; [@option]
      (** The type of cluster. If not set, defaults to PRIMARY. Default value: PRIMARY Possible values: [PRIMARY, SECONDARY] *)
  deletion_policy : string option; [@option]
      (** Policy to determine if the cluster should be deleted forcefully.
Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
Deleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = FORCE otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance. *)
  display_name : string option; [@option]
      (** User-settable and human-readable display name for the Cluster. *)
  etag : string option; [@option]
      (** For Resource freshness validation (https://google.aip.dev/154) *)
  labels : (string * string) list option; [@option]
      (** User-defined labels for the alloydb cluster.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The location where the alloydb cluster should reside. *)
  automated_backup_policy :
    google_alloydb_cluster__automated_backup_policy list;
  continuous_backup_config :
    google_alloydb_cluster__continuous_backup_config list;
  encryption_config : google_alloydb_cluster__encryption_config list;
  initial_user : google_alloydb_cluster__initial_user list;
  network_config : google_alloydb_cluster__network_config list;
  restore_backup_source :
    google_alloydb_cluster__restore_backup_source list;
  restore_continuous_backup_source :
    google_alloydb_cluster__restore_continuous_backup_source list;
  secondary_config : google_alloydb_cluster__secondary_config list;
  timeouts : google_alloydb_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_cluster *)

let google_alloydb_cluster ?annotations ?cluster_type
    ?deletion_policy ?display_name ?etag ?labels ?timeouts
    ~cluster_id ~location ~automated_backup_policy
    ~continuous_backup_config ~encryption_config ~initial_user
    ~network_config ~restore_backup_source
    ~restore_continuous_backup_source ~secondary_config __resource_id
    =
  let __resource_type = "google_alloydb_cluster" in
  let __resource =
    {
      annotations;
      cluster_id;
      cluster_type;
      deletion_policy;
      display_name;
      etag;
      labels;
      location;
      automated_backup_policy;
      continuous_backup_config;
      encryption_config;
      initial_user;
      network_config;
      restore_backup_source;
      restore_continuous_backup_source;
      secondary_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_alloydb_cluster __resource);
  ()
