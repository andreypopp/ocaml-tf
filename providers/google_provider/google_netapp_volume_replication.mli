(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_volume_replication__destination_volume_parameters
type google_netapp_volume_replication__timeouts

type google_netapp_volume_replication__transfer_stats = {
  lag_duration : string prop;  (** lag_duration *)
  last_transfer_bytes : string prop;  (** last_transfer_bytes *)
  last_transfer_duration : string prop;
      (** last_transfer_duration *)
  last_transfer_end_time : string prop;
      (** last_transfer_end_time *)
  last_transfer_error : string prop;  (** last_transfer_error *)
  total_transfer_duration : string prop;
      (** total_transfer_duration *)
  transfer_bytes : string prop;  (** transfer_bytes *)
  update_time : string prop;  (** update_time *)
}

type google_netapp_volume_replication

val google_netapp_volume_replication :
  ?delete_destination_volume:bool prop ->
  ?description:string prop ->
  ?force_stopping:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?replication_enabled:bool prop ->
  ?wait_for_mirror:bool prop ->
  ?timeouts:google_netapp_volume_replication__timeouts ->
  location:string prop ->
  name:string prop ->
  replication_schedule:string prop ->
  volume_name:string prop ->
  destination_volume_parameters:
    google_netapp_volume_replication__destination_volume_parameters
    list ->
  string ->
  unit
