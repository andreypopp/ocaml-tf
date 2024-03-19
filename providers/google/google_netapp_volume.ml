(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type export_policy__rules = {
  access_type : string prop option; [@option]
      (** Defines the access type for clients matching the 'allowedClients' specification. Possible values: [READ_ONLY, READ_WRITE, READ_NONE] *)
  allowed_clients : string prop option; [@option]
      (** Defines the client ingress specification (allowed clients) as a comma seperated list with IPv4 CIDRs or IPv4 host addresses. *)
  has_root_access : string prop option; [@option]
      (** If enabled, the root user (UID = 0) of the specified clients doesn't get mapped to nobody (UID = 65534). This is also known as no_root_squash. *)
  kerberos5_read_only : bool prop option; [@option]
      (** If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. *)
  kerberos5_read_write : bool prop option; [@option]
      (** If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. The 'kerberos5ReadOnly' value is ignored if this is enabled. *)
  kerberos5i_read_only : bool prop option; [@option]
      (** If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. *)
  kerberos5i_read_write : bool prop option; [@option]
      (** If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. The 'kerberos5iReadOnly' value is ignored if this is enabled. *)
  kerberos5p_read_only : bool prop option; [@option]
      (** If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. *)
  kerberos5p_read_write : bool prop option; [@option]
      (** If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. The 'kerberos5pReadOnly' value is ignored if this is enabled. *)
  nfsv3 : bool prop option; [@option]
      (** Enable to apply the export rule to NFSV3 clients. *)
  nfsv4 : bool prop option; [@option]
      (** Enable to apply the export rule to NFSV4.1 clients. *)
}
[@@deriving yojson_of]
(** Export rules (up to 5) control NFS volume access. *)

type export_policy = { rules : export_policy__rules list }
[@@deriving yojson_of]
(** Export policy of the volume for NFSV3 and/or NFSV4.1 access. *)

type restore_parameters = {
  source_backup : string prop option; [@option]
      (** Full name of the snapshot to use for creating this volume.
'source_snapshot' and 'source_backup' cannot be used simultaneously.
Format: 'projects/{{project}}/locations/{{location}}/backupVaults/{{backupVaultId}}/backups/{{backup}}'. *)
  source_snapshot : string prop option; [@option]
      (** Full name of the snapshot to use for creating this volume.
'source_snapshot' and 'source_backup' cannot be used simultaneously.
Format: 'projects/{{project}}/locations/{{location}}/volumes/{{volume}}/snapshots/{{snapshot}}'. *)
}
[@@deriving yojson_of]
(** Used to create this volume from a snapshot (= cloning) or an backup. *)

type snapshot_policy__daily_schedule = {
  hour : float prop option; [@option]
      (** Set the hour to create the snapshot (0-23), defaults to midnight (0). *)
  minute : float prop option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float prop;
      (** The maximum number of snapshots to keep for the daily schedule. *)
}
[@@deriving yojson_of]
(** Daily schedule policy. *)

type snapshot_policy__hourly_schedule = {
  minute : float prop option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float prop;
      (** The maximum number of snapshots to keep for the hourly schedule. *)
}
[@@deriving yojson_of]
(** Hourly schedule policy. *)

type snapshot_policy__monthly_schedule = {
  days_of_month : string prop option; [@option]
      (** Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to '1'. *)
  hour : float prop option; [@option]
      (** Set the hour to create the snapshot (0-23), defaults to midnight (0). *)
  minute : float prop option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float prop;
      (** The maximum number of snapshots to keep for the monthly schedule *)
}
[@@deriving yojson_of]
(** Monthly schedule policy. *)

type snapshot_policy__weekly_schedule = {
  day : string prop option; [@option]
      (** Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. Defaults to 'Sunday'. *)
  hour : float prop option; [@option]
      (** Set the hour to create the snapshot (0-23), defaults to midnight (0). *)
  minute : float prop option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float prop;
      (** The maximum number of snapshots to keep for the weekly schedule. *)
}
[@@deriving yojson_of]
(** Weekly schedule policy. *)

type snapshot_policy = {
  enabled : bool prop option; [@option]
      (** Enables automated snapshot creation according to defined schedule. Default is false.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. *)
  daily_schedule : snapshot_policy__daily_schedule list;
  hourly_schedule : snapshot_policy__hourly_schedule list;
  monthly_schedule : snapshot_policy__monthly_schedule list;
  weekly_schedule : snapshot_policy__weekly_schedule list;
}
[@@deriving yojson_of]
(** Snapshot policy defines the schedule for automatic snapshot creation.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type mount_options = {
  export : string prop;  (** export *)
  export_full : string prop;  (** export_full *)
  instructions : string prop;  (** instructions *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]

type google_netapp_volume = {
  capacity_gib : string prop;
      (** Capacity of the volume (in GiB). *)
  deletion_policy : string prop option; [@option]
      (** Policy to determine if the volume should be deleted forcefully.
Volumes may have nested snapshot resources. Deleting such a volume will fail.
Setting this parameter to FORCE will delete volumes including nested snapshots. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  kerberos_enabled : bool prop option; [@option]
      (** Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p). *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name. *)
  name : string prop;
      (** The name of the volume. Needs to be unique per location. *)
  project : string prop option; [@option]  (** project *)
  protocols : string prop list;
      (** The protocol of the volume. Allowed combinations are '['NFSV3']', '['NFSV4']', '['SMB']', '['NFSV3', 'NFSV4']', '['SMB', 'NFSV3']' and '['SMB', 'NFSV4']'. Possible values: [NFSV3, NFSV4, SMB] *)
  restricted_actions : string prop list option; [@option]
      (** List of actions that are restricted on this volume. Possible values: [DELETE] *)
  security_style : string prop option; [@option]
      (** Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol. Possible values: [NTFS, UNIX] *)
  share_name : string prop;
      (** Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location. *)
  smb_settings : string prop list option; [@option]
      (** Settings for volumes with SMB access. Possible values: [ENCRYPT_DATA, BROWSABLE, CHANGE_NOTIFY, NON_BROWSABLE, OPLOCKS, SHOW_SNAPSHOT, SHOW_PREVIOUS_VERSIONS, ACCESS_BASED_ENUMERATION, CONTINUOUSLY_AVAILABLE] *)
  snapshot_directory : bool prop option; [@option]
      (** If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable Previous Versions support for SMB. *)
  storage_pool : string prop;
      (** Name of the storage pool to create the volume in. Pool needs enough spare capacity to accomodate the volume. *)
  unix_permissions : string prop option; [@option]
      (** Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only. *)
  export_policy : export_policy list;
  restore_parameters : restore_parameters list;
  snapshot_policy : snapshot_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_volume *)

let export_policy__rules ?access_type ?allowed_clients
    ?has_root_access ?kerberos5_read_only ?kerberos5_read_write
    ?kerberos5i_read_only ?kerberos5i_read_write
    ?kerberos5p_read_only ?kerberos5p_read_write ?nfsv3 ?nfsv4 () :
    export_policy__rules =
  {
    access_type;
    allowed_clients;
    has_root_access;
    kerberos5_read_only;
    kerberos5_read_write;
    kerberos5i_read_only;
    kerberos5i_read_write;
    kerberos5p_read_only;
    kerberos5p_read_write;
    nfsv3;
    nfsv4;
  }

let export_policy ~rules () : export_policy = { rules }

let restore_parameters ?source_backup ?source_snapshot () :
    restore_parameters =
  { source_backup; source_snapshot }

let snapshot_policy__daily_schedule ?hour ?minute ~snapshots_to_keep
    () : snapshot_policy__daily_schedule =
  { hour; minute; snapshots_to_keep }

let snapshot_policy__hourly_schedule ?minute ~snapshots_to_keep () :
    snapshot_policy__hourly_schedule =
  { minute; snapshots_to_keep }

let snapshot_policy__monthly_schedule ?days_of_month ?hour ?minute
    ~snapshots_to_keep () : snapshot_policy__monthly_schedule =
  { days_of_month; hour; minute; snapshots_to_keep }

let snapshot_policy__weekly_schedule ?day ?hour ?minute
    ~snapshots_to_keep () : snapshot_policy__weekly_schedule =
  { day; hour; minute; snapshots_to_keep }

let snapshot_policy ?enabled ~daily_schedule ~hourly_schedule
    ~monthly_schedule ~weekly_schedule () : snapshot_policy =
  {
    enabled;
    daily_schedule;
    hourly_schedule;
    monthly_schedule;
    weekly_schedule;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_volume ?deletion_policy ?description ?id
    ?kerberos_enabled ?labels ?project ?restricted_actions
    ?security_style ?smb_settings ?snapshot_directory
    ?unix_permissions ?timeouts ~capacity_gib ~location ~name
    ~protocols ~share_name ~storage_pool ~export_policy
    ~restore_parameters ~snapshot_policy () : google_netapp_volume =
  {
    capacity_gib;
    deletion_policy;
    description;
    id;
    kerberos_enabled;
    labels;
    location;
    name;
    project;
    protocols;
    restricted_actions;
    security_style;
    share_name;
    smb_settings;
    snapshot_directory;
    storage_pool;
    unix_permissions;
    export_policy;
    restore_parameters;
    snapshot_policy;
    timeouts;
  }

type t = {
  active_directory : string prop;
  capacity_gib : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  encryption_type : string prop;
  has_replication : bool prop;
  id : string prop;
  kerberos_enabled : bool prop;
  kms_config : string prop;
  labels : (string * string) list prop;
  ldap_enabled : bool prop;
  location : string prop;
  mount_options : mount_options list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  protocols : string list prop;
  psa_range : string prop;
  restricted_actions : string list prop;
  security_style : string prop;
  service_level : string prop;
  share_name : string prop;
  smb_settings : string list prop;
  snapshot_directory : bool prop;
  state : string prop;
  state_details : string prop;
  storage_pool : string prop;
  terraform_labels : (string * string) list prop;
  unix_permissions : string prop;
  used_gib : string prop;
}

let register ?tf_module ?deletion_policy ?description ?id
    ?kerberos_enabled ?labels ?project ?restricted_actions
    ?security_style ?smb_settings ?snapshot_directory
    ?unix_permissions ?timeouts ~capacity_gib ~location ~name
    ~protocols ~share_name ~storage_pool ~export_policy
    ~restore_parameters ~snapshot_policy __resource_id =
  let __resource_type = "google_netapp_volume" in
  let __resource =
    google_netapp_volume ?deletion_policy ?description ?id
      ?kerberos_enabled ?labels ?project ?restricted_actions
      ?security_style ?smb_settings ?snapshot_directory
      ?unix_permissions ?timeouts ~capacity_gib ~location ~name
      ~protocols ~share_name ~storage_pool ~export_policy
      ~restore_parameters ~snapshot_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_volume __resource);
  let __resource_attributes =
    ({
       active_directory =
         Prop.computed __resource_type __resource_id
           "active_directory";
       capacity_gib =
         Prop.computed __resource_type __resource_id "capacity_gib";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       deletion_policy =
         Prop.computed __resource_type __resource_id
           "deletion_policy";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       encryption_type =
         Prop.computed __resource_type __resource_id
           "encryption_type";
       has_replication =
         Prop.computed __resource_type __resource_id
           "has_replication";
       id = Prop.computed __resource_type __resource_id "id";
       kerberos_enabled =
         Prop.computed __resource_type __resource_id
           "kerberos_enabled";
       kms_config =
         Prop.computed __resource_type __resource_id "kms_config";
       labels = Prop.computed __resource_type __resource_id "labels";
       ldap_enabled =
         Prop.computed __resource_type __resource_id "ldap_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       mount_options =
         Prop.computed __resource_type __resource_id "mount_options";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       project =
         Prop.computed __resource_type __resource_id "project";
       protocols =
         Prop.computed __resource_type __resource_id "protocols";
       psa_range =
         Prop.computed __resource_type __resource_id "psa_range";
       restricted_actions =
         Prop.computed __resource_type __resource_id
           "restricted_actions";
       security_style =
         Prop.computed __resource_type __resource_id "security_style";
       service_level =
         Prop.computed __resource_type __resource_id "service_level";
       share_name =
         Prop.computed __resource_type __resource_id "share_name";
       smb_settings =
         Prop.computed __resource_type __resource_id "smb_settings";
       snapshot_directory =
         Prop.computed __resource_type __resource_id
           "snapshot_directory";
       state = Prop.computed __resource_type __resource_id "state";
       state_details =
         Prop.computed __resource_type __resource_id "state_details";
       storage_pool =
         Prop.computed __resource_type __resource_id "storage_pool";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       unix_permissions =
         Prop.computed __resource_type __resource_id
           "unix_permissions";
       used_gib =
         Prop.computed __resource_type __resource_id "used_gib";
     }
      : t)
  in
  __resource_attributes
