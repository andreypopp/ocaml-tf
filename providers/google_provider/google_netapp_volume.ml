(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_netapp_volume__export_policy__rules = {
  access_type : string option; [@option]
      (** Defines the access type for clients matching the 'allowedClients' specification. Possible values: [READ_ONLY, READ_WRITE, READ_NONE] *)
  allowed_clients : string option; [@option]
      (** Defines the client ingress specification (allowed clients) as a comma seperated list with IPv4 CIDRs or IPv4 host addresses. *)
  has_root_access : string option; [@option]
      (** If enabled, the root user (UID = 0) of the specified clients doesn't get mapped to nobody (UID = 65534). This is also known as no_root_squash. *)
  kerberos5_read_only : bool option; [@option]
      (** If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. *)
  kerberos5_read_write : bool option; [@option]
      (** If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. The 'kerberos5ReadOnly' value is ignored if this is enabled. *)
  kerberos5i_read_only : bool option; [@option]
      (** If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. *)
  kerberos5i_read_write : bool option; [@option]
      (** If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. The 'kerberos5iReadOnly' value is ignored if this is enabled. *)
  kerberos5p_read_only : bool option; [@option]
      (** If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. *)
  kerberos5p_read_write : bool option; [@option]
      (** If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. The 'kerberos5pReadOnly' value is ignored if this is enabled. *)
  nfsv3 : bool option; [@option]
      (** Enable to apply the export rule to NFSV3 clients. *)
  nfsv4 : bool option; [@option]
      (** Enable to apply the export rule to NFSV4.1 clients. *)
}
[@@deriving yojson_of]
(** Export rules (up to 5) control NFS volume access. *)

type google_netapp_volume__export_policy = {
  rules : google_netapp_volume__export_policy__rules list;
}
[@@deriving yojson_of]
(** Export policy of the volume for NFSV3 and/or NFSV4.1 access. *)

type google_netapp_volume__restore_parameters = {
  source_backup : string option; [@option]
      (** Full name of the snapshot to use for creating this volume.
'source_snapshot' and 'source_backup' cannot be used simultaneously.
Format: 'projects/{{project}}/locations/{{location}}/backupVaults/{{backupVaultId}}/backups/{{backup}}'. *)
  source_snapshot : string option; [@option]
      (** Full name of the snapshot to use for creating this volume.
'source_snapshot' and 'source_backup' cannot be used simultaneously.
Format: 'projects/{{project}}/locations/{{location}}/volumes/{{volume}}/snapshots/{{snapshot}}'. *)
}
[@@deriving yojson_of]
(** Used to create this volume from a snapshot (= cloning) or an backup. *)

type google_netapp_volume__snapshot_policy__daily_schedule = {
  hour : float option; [@option]
      (** Set the hour to create the snapshot (0-23), defaults to midnight (0). *)
  minute : float option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float;
      (** The maximum number of snapshots to keep for the daily schedule. *)
}
[@@deriving yojson_of]
(** Daily schedule policy. *)

type google_netapp_volume__snapshot_policy__hourly_schedule = {
  minute : float option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float;
      (** The maximum number of snapshots to keep for the hourly schedule. *)
}
[@@deriving yojson_of]
(** Hourly schedule policy. *)

type google_netapp_volume__snapshot_policy__monthly_schedule = {
  days_of_month : string option; [@option]
      (** Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to '1'. *)
  hour : float option; [@option]
      (** Set the hour to create the snapshot (0-23), defaults to midnight (0). *)
  minute : float option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float;
      (** The maximum number of snapshots to keep for the monthly schedule *)
}
[@@deriving yojson_of]
(** Monthly schedule policy. *)

type google_netapp_volume__snapshot_policy__weekly_schedule = {
  day : string option; [@option]
      (** Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. Defaults to 'Sunday'. *)
  hour : float option; [@option]
      (** Set the hour to create the snapshot (0-23), defaults to midnight (0). *)
  minute : float option; [@option]
      (** Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). *)
  snapshots_to_keep : float;
      (** The maximum number of snapshots to keep for the weekly schedule. *)
}
[@@deriving yojson_of]
(** Weekly schedule policy. *)

type google_netapp_volume__snapshot_policy = {
  enabled : bool option; [@option]
      (** Enables automated snapshot creation according to defined schedule. Default is false.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. *)
  daily_schedule :
    google_netapp_volume__snapshot_policy__daily_schedule list;
  hourly_schedule :
    google_netapp_volume__snapshot_policy__hourly_schedule list;
  monthly_schedule :
    google_netapp_volume__snapshot_policy__monthly_schedule list;
  weekly_schedule :
    google_netapp_volume__snapshot_policy__weekly_schedule list;
}
[@@deriving yojson_of]
(** Snapshot policy defines the schedule for automatic snapshot creation.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. *)

type google_netapp_volume__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_volume__timeouts *)

type google_netapp_volume__mount_options = {
  export : string;  (** export *)
  export_full : string;  (** export_full *)
  instructions : string;  (** instructions *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]

type google_netapp_volume = {
  capacity_gib : string;  (** Capacity of the volume (in GiB). *)
  deletion_policy : string option; [@option]
      (** Policy to determine if the volume should be deleted forcefully.
Volumes may have nested snapshot resources. Deleting such a volume will fail.
Setting this parameter to FORCE will delete volumes including nested snapshots. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  kerberos_enabled : bool option; [@option]
      (** Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p). *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name. *)
  name : string;
      (** The name of the volume. Needs to be unique per location. *)
  protocols : string list;
      (** The protocol of the volume. Allowed combinations are '['NFSV3']', '['NFSV4']', '['SMB']', '['NFSV3', 'NFSV4']', '['SMB', 'NFSV3']' and '['SMB', 'NFSV4']'. Possible values: [NFSV3, NFSV4, SMB] *)
  restricted_actions : string list option; [@option]
      (** List of actions that are restricted on this volume. Possible values: [DELETE] *)
  share_name : string;
      (** Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location. *)
  smb_settings : string list option; [@option]
      (** Settings for volumes with SMB access. Possible values: [ENCRYPT_DATA, BROWSABLE, CHANGE_NOTIFY, NON_BROWSABLE, OPLOCKS, SHOW_SNAPSHOT, SHOW_PREVIOUS_VERSIONS, ACCESS_BASED_ENUMERATION, CONTINUOUSLY_AVAILABLE] *)
  snapshot_directory : bool option; [@option]
      (** If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable Previous Versions support for SMB. *)
  storage_pool : string;
      (** Name of the storage pool to create the volume in. Pool needs enough spare capacity to accomodate the volume. *)
  export_policy : google_netapp_volume__export_policy list;
  restore_parameters : google_netapp_volume__restore_parameters list;
  snapshot_policy : google_netapp_volume__snapshot_policy list;
  timeouts : google_netapp_volume__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_volume *)

let google_netapp_volume ?deletion_policy ?description
    ?kerberos_enabled ?labels ?restricted_actions ?smb_settings
    ?snapshot_directory ?timeouts ~capacity_gib ~location ~name
    ~protocols ~share_name ~storage_pool ~export_policy
    ~restore_parameters ~snapshot_policy __resource_id =
  let __resource_type = "google_netapp_volume" in
  let __resource =
    {
      capacity_gib;
      deletion_policy;
      description;
      kerberos_enabled;
      labels;
      location;
      name;
      protocols;
      restricted_actions;
      share_name;
      smb_settings;
      snapshot_directory;
      storage_pool;
      export_policy;
      restore_parameters;
      snapshot_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_volume __resource);
  ()
