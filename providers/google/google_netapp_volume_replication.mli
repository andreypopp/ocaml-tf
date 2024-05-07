(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type transfer_stats = {
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

type destination_volume_parameters

val destination_volume_parameters :
  ?description:string prop ->
  ?share_name:string prop ->
  ?volume_id:string prop ->
  storage_pool:string prop ->
  unit ->
  destination_volume_parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?destination_volume_parameters:destination_volume_parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  replication_schedule:string prop ->
  volume_name:string prop ->
  unit ->
  google_netapp_volume_replication

val yojson_of_google_netapp_volume_replication :
  google_netapp_volume_replication -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  delete_destination_volume : bool prop;
  description : string prop;
  destination_volume : string prop;
  effective_labels : (string * string) list prop;
  force_stopping : bool prop;
  healthy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  mirror_state : string prop;
  name : string prop;
  project : string prop;
  replication_enabled : bool prop;
  replication_schedule : string prop;
  role : string prop;
  source_volume : string prop;
  state : string prop;
  state_details : string prop;
  terraform_labels : (string * string) list prop;
  transfer_stats : transfer_stats list prop;
  volume_name : string prop;
  wait_for_mirror : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_destination_volume:bool prop ->
  ?description:string prop ->
  ?force_stopping:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?replication_enabled:bool prop ->
  ?wait_for_mirror:bool prop ->
  ?destination_volume_parameters:destination_volume_parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  replication_schedule:string prop ->
  volume_name:string prop ->
  string ->
  t

val make :
  ?delete_destination_volume:bool prop ->
  ?description:string prop ->
  ?force_stopping:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?replication_enabled:bool prop ->
  ?wait_for_mirror:bool prop ->
  ?destination_volume_parameters:destination_volume_parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  replication_schedule:string prop ->
  volume_name:string prop ->
  string ->
  t Tf_core.resource
