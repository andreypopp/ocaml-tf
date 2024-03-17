(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_volume__export_policy__rules
type google_netapp_volume__export_policy
type google_netapp_volume__restore_parameters
type google_netapp_volume__snapshot_policy__daily_schedule
type google_netapp_volume__snapshot_policy__hourly_schedule
type google_netapp_volume__snapshot_policy__monthly_schedule
type google_netapp_volume__snapshot_policy__weekly_schedule
type google_netapp_volume__snapshot_policy
type google_netapp_volume__timeouts

type google_netapp_volume__mount_options = {
  export : string prop;  (** export *)
  export_full : string prop;  (** export_full *)
  instructions : string prop;  (** instructions *)
  protocol : string prop;  (** protocol *)
}

type google_netapp_volume

val google_netapp_volume :
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?restricted_actions:string prop list ->
  ?security_style:string prop ->
  ?smb_settings:string prop list ->
  ?snapshot_directory:bool prop ->
  ?unix_permissions:string prop ->
  ?timeouts:google_netapp_volume__timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  protocols:string prop list ->
  share_name:string prop ->
  storage_pool:string prop ->
  export_policy:google_netapp_volume__export_policy list ->
  restore_parameters:google_netapp_volume__restore_parameters list ->
  snapshot_policy:google_netapp_volume__snapshot_policy list ->
  string ->
  unit
