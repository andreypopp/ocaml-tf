(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type automated_backup_policy__encryption_config = {
  kms_key_name : string prop option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type automated_backup_policy__quantity_based_retention = {
  count : float prop option; [@option]
      (** The number of backups to retain. *)
}
[@@deriving yojson_of]
(** Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together. *)

type automated_backup_policy__time_based_retention = {
  retention_period : string prop option; [@option]
      (** The retention period.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together. *)

type automated_backup_policy__weekly_schedule__start_times = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Currently, only the value 0 is supported. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Currently, only the value 0 is supported. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Currently, only the value 0 is supported. *)
}
[@@deriving yojson_of]
(** The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). *)

type automated_backup_policy__weekly_schedule = {
  days_of_week : string prop list option; [@option]
      (** The days of the week to perform a backup. At least one day of the week must be provided. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  start_times :
    automated_backup_policy__weekly_schedule__start_times list;
}
[@@deriving yojson_of]
(** Weekly schedule for the Backup. *)

type automated_backup_policy = {
  backup_window : string prop option; [@option]
      (** The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.

The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  enabled : bool prop option; [@option]
      (** Whether automated backups are enabled. *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to backups created using this configuration. *)
  location : string prop option; [@option]
      (** The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. *)
  encryption_config :
    automated_backup_policy__encryption_config list;
  quantity_based_retention :
    automated_backup_policy__quantity_based_retention list;
  time_based_retention :
    automated_backup_policy__time_based_retention list;
  weekly_schedule : automated_backup_policy__weekly_schedule list;
}
[@@deriving yojson_of]
(** The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default. *)

type continuous_backup_config__encryption_config = {
  kms_key_name : string prop option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type continuous_backup_config = {
  enabled : bool prop option; [@option]
      (** Whether continuous backup recovery is enabled. If not set, defaults to true. *)
  recovery_window_days : float prop option; [@option]
      (** The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.

If not set, defaults to 14 days. *)
  encryption_config :
    continuous_backup_config__encryption_config list;
}
[@@deriving yojson_of]
(** The continuous backup config for this cluster.

If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days. *)

type encryption_config = {
  kms_key_name : string prop option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type initial_user = {
  password : string prop;  (** The initial password for the user. *)
  user : string prop option; [@option]  (** The database username. *)
}
[@@deriving yojson_of]
(** Initial user to setup during cluster creation. *)

type network_config = {
  allocated_ip_range : string prop option; [@option]
      (** The name of the allocated IP range for the private IP AlloyDB cluster. For example: google-managed-services-default.
If set, the instance IPs for this cluster will be created in the allocated range. *)
  network : string prop option; [@option]
      (** The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
It is specified in the form: projects/{projectNumber}/global/networks/{network_id}. *)
}
[@@deriving yojson_of]
(** Metadata related to network configuration. *)

type restore_backup_source = {
  backup_name : string prop;
      (** The name of the backup that this cluster is restored from. *)
}
[@@deriving yojson_of]
(** The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together. *)

type restore_continuous_backup_source = {
  cluster : string prop;
      (** The name of the source cluster that this cluster is restored from. *)
  point_in_time : string prop;
      (** The point in time that this cluster is restored to, in RFC 3339 format. *)
}
[@@deriving yojson_of]
(** The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together. *)

type secondary_config = {
  primary_cluster_name : string prop;
      (** Name of the primary cluster must be in the format
'projects/{project}/locations/{location}/clusters/{cluster_id}' *)
}
[@@deriving yojson_of]
(** Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type backup_source = {
  backup_name : string prop;  (** backup_name *)
}
[@@deriving yojson_of]

type continuous_backup_info__encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type continuous_backup_info = {
  earliest_restorable_time : string prop;
      (** earliest_restorable_time *)
  enabled_time : string prop;  (** enabled_time *)
  encryption_info : continuous_backup_info__encryption_info list;
      (** encryption_info *)
  schedule : string prop list;  (** schedule *)
}
[@@deriving yojson_of]

type encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type migration_source = {
  host_port : string prop;  (** host_port *)
  reference_id : string prop;  (** reference_id *)
  source_type : string prop;  (** source_type *)
}
[@@deriving yojson_of]

type google_alloydb_cluster = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  cluster_id : string prop;  (** The ID of the alloydb cluster. *)
  cluster_type : string prop option; [@option]
      (** The type of cluster. If not set, defaults to PRIMARY. Default value: PRIMARY Possible values: [PRIMARY, SECONDARY] *)
  database_version : string prop option; [@option]
      (** The database engine major version. This is an optional field and it's populated at the Cluster creation time. This field cannot be changed after cluster creation. *)
  deletion_policy : string prop option; [@option]
      (** Policy to determine if the cluster should be deleted forcefully.
Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
Deleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = FORCE otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance. *)
  display_name : string prop option; [@option]
      (** User-settable and human-readable display name for the Cluster. *)
  etag : string prop option; [@option]
      (** For Resource freshness validation (https://google.aip.dev/154) *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for the alloydb cluster.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The location where the alloydb cluster should reside. *)
  network : string prop option; [@option]
      (** The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:

projects/{projectNumber}/global/networks/{network_id}. *)
  project : string prop option; [@option]  (** project *)
  automated_backup_policy : automated_backup_policy list;
  continuous_backup_config : continuous_backup_config list;
  encryption_config : encryption_config list;
  initial_user : initial_user list;
  network_config : network_config list;
  restore_backup_source : restore_backup_source list;
  restore_continuous_backup_source :
    restore_continuous_backup_source list;
  secondary_config : secondary_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_cluster *)

let automated_backup_policy__encryption_config ?kms_key_name () :
    automated_backup_policy__encryption_config =
  { kms_key_name }

let automated_backup_policy__quantity_based_retention ?count () :
    automated_backup_policy__quantity_based_retention =
  { count }

let automated_backup_policy__time_based_retention ?retention_period
    () : automated_backup_policy__time_based_retention =
  { retention_period }

let automated_backup_policy__weekly_schedule__start_times ?hours
    ?minutes ?nanos ?seconds () :
    automated_backup_policy__weekly_schedule__start_times =
  { hours; minutes; nanos; seconds }

let automated_backup_policy__weekly_schedule ?days_of_week
    ~start_times () : automated_backup_policy__weekly_schedule =
  { days_of_week; start_times }

let automated_backup_policy ?backup_window ?enabled ?labels ?location
    ~encryption_config ~quantity_based_retention
    ~time_based_retention ~weekly_schedule () :
    automated_backup_policy =
  {
    backup_window;
    enabled;
    labels;
    location;
    encryption_config;
    quantity_based_retention;
    time_based_retention;
    weekly_schedule;
  }

let continuous_backup_config__encryption_config ?kms_key_name () :
    continuous_backup_config__encryption_config =
  { kms_key_name }

let continuous_backup_config ?enabled ?recovery_window_days
    ~encryption_config () : continuous_backup_config =
  { enabled; recovery_window_days; encryption_config }

let encryption_config ?kms_key_name () : encryption_config =
  { kms_key_name }

let initial_user ?user ~password () : initial_user =
  { password; user }

let network_config ?allocated_ip_range ?network () : network_config =
  { allocated_ip_range; network }

let restore_backup_source ~backup_name () : restore_backup_source =
  { backup_name }

let restore_continuous_backup_source ~cluster ~point_in_time () :
    restore_continuous_backup_source =
  { cluster; point_in_time }

let secondary_config ~primary_cluster_name () : secondary_config =
  { primary_cluster_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_alloydb_cluster ?annotations ?cluster_type
    ?database_version ?deletion_policy ?display_name ?etag ?id
    ?labels ?network ?project ?timeouts ~cluster_id ~location
    ~automated_backup_policy ~continuous_backup_config
    ~encryption_config ~initial_user ~network_config
    ~restore_backup_source ~restore_continuous_backup_source
    ~secondary_config () : google_alloydb_cluster =
  {
    annotations;
    cluster_id;
    cluster_type;
    database_version;
    deletion_policy;
    display_name;
    etag;
    id;
    labels;
    location;
    network;
    project;
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

type t = {
  annotations : (string * string) list prop;
  backup_source : backup_source list prop;
  cluster_id : string prop;
  cluster_type : string prop;
  continuous_backup_info : continuous_backup_info list prop;
  database_version : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  encryption_info : encryption_info list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  migration_source : migration_source list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

let make ?annotations ?cluster_type ?database_version
    ?deletion_policy ?display_name ?etag ?id ?labels ?network
    ?project ?timeouts ~cluster_id ~location ~automated_backup_policy
    ~continuous_backup_config ~encryption_config ~initial_user
    ~network_config ~restore_backup_source
    ~restore_continuous_backup_source ~secondary_config __id =
  let __type = "google_alloydb_cluster" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       backup_source = Prop.computed __type __id "backup_source";
       cluster_id = Prop.computed __type __id "cluster_id";
       cluster_type = Prop.computed __type __id "cluster_type";
       continuous_backup_info =
         Prop.computed __type __id "continuous_backup_info";
       database_version =
         Prop.computed __type __id "database_version";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encryption_info = Prop.computed __type __id "encryption_info";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       migration_source =
         Prop.computed __type __id "migration_source";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
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
      yojson_of_google_alloydb_cluster
        (google_alloydb_cluster ?annotations ?cluster_type
           ?database_version ?deletion_policy ?display_name ?etag ?id
           ?labels ?network ?project ?timeouts ~cluster_id ~location
           ~automated_backup_policy ~continuous_backup_config
           ~encryption_config ~initial_user ~network_config
           ~restore_backup_source ~restore_continuous_backup_source
           ~secondary_config ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?cluster_type ?database_version
    ?deletion_policy ?display_name ?etag ?id ?labels ?network
    ?project ?timeouts ~cluster_id ~location ~automated_backup_policy
    ~continuous_backup_config ~encryption_config ~initial_user
    ~network_config ~restore_backup_source
    ~restore_continuous_backup_source ~secondary_config __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?cluster_type ?database_version
      ?deletion_policy ?display_name ?etag ?id ?labels ?network
      ?project ?timeouts ~cluster_id ~location
      ~automated_backup_policy ~continuous_backup_config
      ~encryption_config ~initial_user ~network_config
      ~restore_backup_source ~restore_continuous_backup_source
      ~secondary_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
