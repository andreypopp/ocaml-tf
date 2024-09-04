(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type mount_options = {
  export : string prop;  (** export *)
  export_full : string prop;  (** export_full *)
  instructions : string prop;  (** instructions *)
  protocol : string prop;  (** protocol *)
}

type backup_config

val backup_config :
  ?backup_policies:string prop list ->
  ?backup_vault:string prop ->
  ?scheduled_backup_enabled:bool prop ->
  unit ->
  backup_config

type export_policy__rules

val export_policy__rules :
  ?access_type:string prop ->
  ?allowed_clients:string prop ->
  ?has_root_access:string prop ->
  ?kerberos5_read_only:bool prop ->
  ?kerberos5_read_write:bool prop ->
  ?kerberos5i_read_only:bool prop ->
  ?kerberos5i_read_write:bool prop ->
  ?kerberos5p_read_only:bool prop ->
  ?kerberos5p_read_write:bool prop ->
  ?nfsv3:bool prop ->
  ?nfsv4:bool prop ->
  unit ->
  export_policy__rules

type export_policy

val export_policy :
  rules:export_policy__rules list -> unit -> export_policy

type restore_parameters

val restore_parameters :
  ?source_backup:string prop ->
  ?source_snapshot:string prop ->
  unit ->
  restore_parameters

type snapshot_policy__daily_schedule

val snapshot_policy__daily_schedule :
  ?hour:float prop ->
  ?minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  snapshot_policy__daily_schedule

type snapshot_policy__hourly_schedule

val snapshot_policy__hourly_schedule :
  ?minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  snapshot_policy__hourly_schedule

type snapshot_policy__monthly_schedule

val snapshot_policy__monthly_schedule :
  ?days_of_month:string prop ->
  ?hour:float prop ->
  ?minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  snapshot_policy__monthly_schedule

type snapshot_policy__weekly_schedule

val snapshot_policy__weekly_schedule :
  ?day:string prop ->
  ?hour:float prop ->
  ?minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  snapshot_policy__weekly_schedule

type snapshot_policy

val snapshot_policy :
  ?enabled:bool prop ->
  ?daily_schedule:snapshot_policy__daily_schedule list ->
  ?hourly_schedule:snapshot_policy__hourly_schedule list ->
  ?monthly_schedule:snapshot_policy__monthly_schedule list ->
  ?weekly_schedule:snapshot_policy__weekly_schedule list ->
  unit ->
  snapshot_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_netapp_volume

val google_netapp_volume :
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?restricted_actions:string prop list ->
  ?security_style:string prop ->
  ?smb_settings:string prop list ->
  ?snapshot_directory:bool prop ->
  ?unix_permissions:string prop ->
  ?backup_config:backup_config list ->
  ?export_policy:export_policy list ->
  ?restore_parameters:restore_parameters list ->
  ?snapshot_policy:snapshot_policy list ->
  ?timeouts:timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  protocols:string prop list ->
  share_name:string prop ->
  storage_pool:string prop ->
  unit ->
  google_netapp_volume

val yojson_of_google_netapp_volume : google_netapp_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_directory : string prop;
  capacity_gib : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  encryption_type : string prop;
  has_replication : bool prop;
  id : string prop;
  kerberos_enabled : bool prop;
  kms_config : string prop;
  labels : string Tf_core.assoc prop;
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
  terraform_labels : string Tf_core.assoc prop;
  unix_permissions : string prop;
  used_gib : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?restricted_actions:string prop list ->
  ?security_style:string prop ->
  ?smb_settings:string prop list ->
  ?snapshot_directory:bool prop ->
  ?unix_permissions:string prop ->
  ?backup_config:backup_config list ->
  ?export_policy:export_policy list ->
  ?restore_parameters:restore_parameters list ->
  ?snapshot_policy:snapshot_policy list ->
  ?timeouts:timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  protocols:string prop list ->
  share_name:string prop ->
  storage_pool:string prop ->
  string ->
  t

val make :
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?restricted_actions:string prop list ->
  ?security_style:string prop ->
  ?smb_settings:string prop list ->
  ?snapshot_directory:bool prop ->
  ?unix_permissions:string prop ->
  ?backup_config:backup_config list ->
  ?export_policy:export_policy list ->
  ?restore_parameters:restore_parameters list ->
  ?snapshot_policy:snapshot_policy list ->
  ?timeouts:timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  protocols:string prop list ->
  share_name:string prop ->
  storage_pool:string prop ->
  string ->
  t Tf_core.resource
