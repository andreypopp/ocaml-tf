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
  export : string;  (** export *)
  export_full : string;  (** export_full *)
  instructions : string;  (** instructions *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]

type google_netapp_volume

val google_netapp_volume :
  ?deletion_policy:string ->
  ?description:string ->
  ?kerberos_enabled:bool ->
  ?labels:(string * string) list ->
  ?restricted_actions:string list ->
  ?smb_settings:string list ->
  ?snapshot_directory:bool ->
  ?timeouts:google_netapp_volume__timeouts ->
  capacity_gib:string ->
  location:string ->
  name:string ->
  protocols:string list ->
  share_name:string ->
  storage_pool:string ->
  export_policy:google_netapp_volume__export_policy list ->
  restore_parameters:google_netapp_volume__restore_parameters list ->
  snapshot_policy:google_netapp_volume__snapshot_policy list ->
  string ->
  unit
