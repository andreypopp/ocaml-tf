(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_backup_backup_plan__backup_config__encryption_key = {
  gcp_kms_encryption_key : string;
      (** Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/* *)
}
[@@deriving yojson_of]
(** This defines a customer managed encryption key that will be used to encrypt the config
portion (the Kubernetes resources) of Backups created via this plan. *)

type google_gke_backup_backup_plan__backup_config__selected_applications__namespaced_names = {
  name : string;  (** The name of a Kubernetes Resource. *)
  namespace : string;  (** The namespace of a Kubernetes Resource. *)
}
[@@deriving yojson_of]
(** A list of namespaced Kubernetes resources. *)

type google_gke_backup_backup_plan__backup_config__selected_applications = {
  namespaced_names :
    google_gke_backup_backup_plan__backup_config__selected_applications__namespaced_names
    list;
}
[@@deriving yojson_of]
(** A list of namespaced Kubernetes Resources. *)

type google_gke_backup_backup_plan__backup_config__selected_namespaces = {
  namespaces : string list;  (** A list of Kubernetes Namespaces. *)
}
[@@deriving yojson_of]
(** If set, include just the resources in the listed namespaces. *)

type google_gke_backup_backup_plan__backup_config = {
  all_namespaces : bool option; [@option]
      (** If True, include all namespaced resources. *)
  include_secrets : bool option; [@option]
      (** This flag specifies whether Kubernetes Secret resources should be included
when they fall into the scope of Backups. *)
  include_volume_data : bool option; [@option]
      (** This flag specifies whether volume data should be backed up when PVCs are
included in the scope of a Backup. *)
  encryption_key :
    google_gke_backup_backup_plan__backup_config__encryption_key list;
  selected_applications :
    google_gke_backup_backup_plan__backup_config__selected_applications
    list;
  selected_namespaces :
    google_gke_backup_backup_plan__backup_config__selected_namespaces
    list;
}
[@@deriving yojson_of]
(** Defines the configuration of Backups created via this BackupPlan. *)

type google_gke_backup_backup_plan__backup_schedule = {
  cron_schedule : string option; [@option]
      (** A standard cron string that defines a repeating schedule for
creating Backups via this BackupPlan.
If this is defined, then backupRetainDays must also be defined. *)
  paused : bool option; [@option]
      (** This flag denotes whether automatic Backup creation is paused for this BackupPlan. *)
}
[@@deriving yojson_of]
(** Defines a schedule for automatic Backup creation via this BackupPlan. *)

type google_gke_backup_backup_plan__retention_policy = {
  backup_delete_lock_days : float option; [@option]
      (** Minimum age for a Backup created via this BackupPlan (in days).
Must be an integer value between 0-90 (inclusive).
A Backup created under this BackupPlan will not be deletable
until it reaches Backup's (create time + backup_delete_lock_days).
Updating this field of a BackupPlan does not affect existing Backups.
Backups created after a successful update will inherit this new value. *)
  backup_retain_days : float option; [@option]
      (** The default maximum age of a Backup created via this BackupPlan.
This field MUST be an integer value >= 0 and <= 365. If specified,
a Backup created under this BackupPlan will be automatically deleted
after its age reaches (createTime + backupRetainDays).
If not specified, Backups created under this BackupPlan will NOT be
subject to automatic deletion. Updating this field does NOT affect
existing Backups under it. Backups created AFTER a successful update
will automatically pick up the new value.
NOTE: backupRetainDays must be >= backupDeleteLockDays.
If cronSchedule is defined, then this must be <= 360 * the creation interval.] *)
  locked : bool option; [@option]
      (** This flag denotes whether the retention policy of this BackupPlan is locked.
If set to True, no further update is allowed on this policy, including
the locked field itself. *)
}
[@@deriving yojson_of]
(** RetentionPolicy governs lifecycle of Backups created under this plan. *)

type google_gke_backup_backup_plan__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_backup_backup_plan__timeouts *)

type google_gke_backup_backup_plan = {
  cluster : string;
      (** The source cluster from which Backups will be created via this BackupPlan. *)
  deactivated : bool option; [@option]
      (** This flag indicates whether this BackupPlan has been deactivated.
Setting this field to True locks the BackupPlan such that no further updates will be allowed
(except deletes), including the deactivated field itself. It also prevents any new Backups
from being created via this BackupPlan (including scheduled Backups). *)
  description : string option; [@option]
      (** User specified descriptive string for this BackupPlan. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Description: A set of custom labels supplied by the user.
A list of key->value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The region of the Backup Plan. *)
  name : string;  (** The full name of the BackupPlan Resource. *)
  project : string option; [@option]  (** project *)
  backup_config : google_gke_backup_backup_plan__backup_config list;
  backup_schedule :
    google_gke_backup_backup_plan__backup_schedule list;
  retention_policy :
    google_gke_backup_backup_plan__retention_policy list;
  timeouts : google_gke_backup_backup_plan__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_backup_backup_plan *)

let google_gke_backup_backup_plan ?deactivated ?description ?id
    ?labels ?project ?timeouts ~cluster ~location ~name
    ~backup_config ~backup_schedule ~retention_policy __resource_id =
  let __resource_type = "google_gke_backup_backup_plan" in
  let __resource =
    {
      cluster;
      deactivated;
      description;
      id;
      labels;
      location;
      name;
      project;
      backup_config;
      backup_schedule;
      retention_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_backup_backup_plan __resource);
  ()
