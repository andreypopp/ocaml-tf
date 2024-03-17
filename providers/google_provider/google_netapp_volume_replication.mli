(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_volume_replication__destination_volume_parameters
type google_netapp_volume_replication__timeouts

type google_netapp_volume_replication__transfer_stats = {
  lag_duration : string;  (** lag_duration *)
  last_transfer_bytes : string;  (** last_transfer_bytes *)
  last_transfer_duration : string;  (** last_transfer_duration *)
  last_transfer_end_time : string;  (** last_transfer_end_time *)
  last_transfer_error : string;  (** last_transfer_error *)
  total_transfer_duration : string;  (** total_transfer_duration *)
  transfer_bytes : string;  (** transfer_bytes *)
  update_time : string;  (** update_time *)
}

type google_netapp_volume_replication

val google_netapp_volume_replication :
  ?delete_destination_volume:bool ->
  ?description:string ->
  ?force_stopping:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?replication_enabled:bool ->
  ?wait_for_mirror:bool ->
  ?timeouts:google_netapp_volume_replication__timeouts ->
  location:string ->
  name:string ->
  replication_schedule:string ->
  volume_name:string ->
  destination_volume_parameters:
    google_netapp_volume_replication__destination_volume_parameters
    list ->
  string ->
  unit
