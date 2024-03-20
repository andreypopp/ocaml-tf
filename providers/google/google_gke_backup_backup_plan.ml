(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_config__encryption_key = {
  gcp_kms_encryption_key : string prop;
      (** Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/* *)
}
[@@deriving yojson_of]
(** This defines a customer managed encryption key that will be used to encrypt the config
portion (the Kubernetes resources) of Backups created via this plan. *)

type backup_config__selected_applications__namespaced_names = {
  name : string prop;  (** The name of a Kubernetes Resource. *)
  namespace : string prop;
      (** The namespace of a Kubernetes Resource. *)
}
[@@deriving yojson_of]
(** A list of namespaced Kubernetes resources. *)

type backup_config__selected_applications = {
  namespaced_names :
    backup_config__selected_applications__namespaced_names list;
}
[@@deriving yojson_of]
(** A list of namespaced Kubernetes Resources. *)

type backup_config__selected_namespaces = {
  namespaces : string prop list;
      (** A list of Kubernetes Namespaces. *)
}
[@@deriving yojson_of]
(** If set, include just the resources in the listed namespaces. *)

type backup_config = {
  all_namespaces : bool prop option; [@option]
      (** If True, include all namespaced resources. *)
  include_secrets : bool prop option; [@option]
      (** This flag specifies whether Kubernetes Secret resources should be included
when they fall into the scope of Backups. *)
  include_volume_data : bool prop option; [@option]
      (** This flag specifies whether volume data should be backed up when PVCs are
included in the scope of a Backup. *)
  encryption_key : backup_config__encryption_key list;
  selected_applications : backup_config__selected_applications list;
  selected_namespaces : backup_config__selected_namespaces list;
}
[@@deriving yojson_of]
(** Defines the configuration of Backups created via this BackupPlan. *)

type backup_schedule = {
  cron_schedule : string prop option; [@option]
      (** A standard cron string that defines a repeating schedule for
creating Backups via this BackupPlan.
If this is defined, then backupRetainDays must also be defined. *)
  paused : bool prop option; [@option]
      (** This flag denotes whether automatic Backup creation is paused for this BackupPlan. *)
}
[@@deriving yojson_of]
(** Defines a schedule for automatic Backup creation via this BackupPlan. *)

type retention_policy = {
  backup_delete_lock_days : float prop option; [@option]
      (** Minimum age for a Backup created via this BackupPlan (in days).
Must be an integer value between 0-90 (inclusive).
A Backup created under this BackupPlan will not be deletable
until it reaches Backup's (create time + backup_delete_lock_days).
Updating this field of a BackupPlan does not affect existing Backups.
Backups created after a successful update will inherit this new value. *)
  backup_retain_days : float prop option; [@option]
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
  locked : bool prop option; [@option]
      (** This flag denotes whether the retention policy of this BackupPlan is locked.
If set to True, no further update is allowed on this policy, including
the locked field itself. *)
}
[@@deriving yojson_of]
(** RetentionPolicy governs lifecycle of Backups created under this plan. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_gke_backup_backup_plan = {
  cluster : string prop;
      (** The source cluster from which Backups will be created via this BackupPlan. *)
  deactivated : bool prop option; [@option]
      (** This flag indicates whether this BackupPlan has been deactivated.
Setting this field to True locks the BackupPlan such that no further updates will be allowed
(except deletes), including the deactivated field itself. It also prevents any new Backups
from being created via this BackupPlan (including scheduled Backups). *)
  description : string prop option; [@option]
      (** User specified descriptive string for this BackupPlan. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Description: A set of custom labels supplied by the user.
A list of key->value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The region of the Backup Plan. *)
  name : string prop;
      (** The full name of the BackupPlan Resource. *)
  project : string prop option; [@option]  (** project *)
  backup_config : backup_config list;
  backup_schedule : backup_schedule list;
  retention_policy : retention_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_backup_backup_plan *)

let backup_config__encryption_key ~gcp_kms_encryption_key () :
    backup_config__encryption_key =
  { gcp_kms_encryption_key }

let backup_config__selected_applications__namespaced_names ~name
    ~namespace () :
    backup_config__selected_applications__namespaced_names =
  { name; namespace }

let backup_config__selected_applications ~namespaced_names () :
    backup_config__selected_applications =
  { namespaced_names }

let backup_config__selected_namespaces ~namespaces () :
    backup_config__selected_namespaces =
  { namespaces }

let backup_config ?all_namespaces ?include_secrets
    ?include_volume_data ~encryption_key ~selected_applications
    ~selected_namespaces () : backup_config =
  {
    all_namespaces;
    include_secrets;
    include_volume_data;
    encryption_key;
    selected_applications;
    selected_namespaces;
  }

let backup_schedule ?cron_schedule ?paused () : backup_schedule =
  { cron_schedule; paused }

let retention_policy ?backup_delete_lock_days ?backup_retain_days
    ?locked () : retention_policy =
  { backup_delete_lock_days; backup_retain_days; locked }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_backup_backup_plan ?deactivated ?description ?id
    ?labels ?project ?timeouts ~cluster ~location ~name
    ~backup_config ~backup_schedule ~retention_policy () :
    google_gke_backup_backup_plan =
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

type t = {
  cluster : string prop;
  deactivated : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  protected_pod_count : float prop;
  state : string prop;
  state_reason : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

let make ?deactivated ?description ?id ?labels ?project ?timeouts
    ~cluster ~location ~name ~backup_config ~backup_schedule
    ~retention_policy __id =
  let __type = "google_gke_backup_backup_plan" in
  let __attrs =
    ({
       cluster = Prop.computed __type __id "cluster";
       deactivated = Prop.computed __type __id "deactivated";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       protected_pod_count =
         Prop.computed __type __id "protected_pod_count";
       state = Prop.computed __type __id "state";
       state_reason = Prop.computed __type __id "state_reason";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_backup_backup_plan
        (google_gke_backup_backup_plan ?deactivated ?description ?id
           ?labels ?project ?timeouts ~cluster ~location ~name
           ~backup_config ~backup_schedule ~retention_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?deactivated ?description ?id ?labels
    ?project ?timeouts ~cluster ~location ~name ~backup_config
    ~backup_schedule ~retention_policy __id =
  let (r : _ Tf_core.resource) =
    make ?deactivated ?description ?id ?labels ?project ?timeouts
      ~cluster ~location ~name ~backup_config ~backup_schedule
      ~retention_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
