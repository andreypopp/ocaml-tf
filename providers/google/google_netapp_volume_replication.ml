(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_netapp_volume_replication__destination_volume_parameters = {
  description : string prop option; [@option]
      (** Description for the destination volume. *)
  share_name : string prop option; [@option]
      (** Share name for destination volume. If not specified, name of source volume's share name will be used. *)
  storage_pool : string prop;
      (** Name of an existing storage pool for the destination volume with format: 'projects/{{project}}/locations/{{location}}/storagePools/{{poolId}}' *)
  volume_id : string prop option; [@option]
      (** Name for the destination volume to be created. If not specified, the name of the source volume will be used. *)
}
[@@deriving yojson_of]
(** Destination volume parameters. *)

type google_netapp_volume_replication__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_volume_replication__timeouts *)

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
[@@deriving yojson_of]

type google_netapp_volume_replication = {
  delete_destination_volume : bool prop option; [@option]
      (** A destination volume is created as part of replication creation. The destination volume will not became
under Terraform management unless you import it manually. If you delete the replication, this volume
will remain.
Setting this parameter to true will delete the *current* destination volume when destroying the
replication. If you reversed the replication direction, this will be your former source volume!
For production use, it is recommended to keep this parameter false to avoid accidental volume
deletion. Handle with care. Default is false. *)
  description : string prop option; [@option]
      (** An description of this resource. *)
  force_stopping : bool prop option; [@option]
      (** Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
currently receives an update and stopping the update might be undesirable. Set this parameter to true
to stop anyway. All data transferred to the destination will be discarded and content of destination
volume will remain at the state of the last successful update. Default is false. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Name of region for this resource. The resource needs to be created in the region of the destination volume. *)
  name : string prop;
      (** The name of the replication. Needs to be unique per location. *)
  project : string prop option; [@option]  (** project *)
  replication_enabled : bool prop option; [@option]
      (** Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
and act independently from the source volume.
Set to true to enable/resume the mirror. WARNING: Resuming a mirror overwrites any changes
done to the destination volume with the content of the source volume. *)
  replication_schedule : string prop;
      (** Specifies the replication interval. Possible values: [EVERY_10_MINUTES, HOURLY, DAILY] *)
  volume_name : string prop;
      (** The name of the existing source volume. *)
  wait_for_mirror : bool prop option; [@option]
      (** Replication resource state is independent of mirror_state. With enough data, it can take many hours
for mirror_state to reach MIRRORED. If you want Terraform to wait for the mirror to finish on
create/stop/resume operations, set this parameter to true. Default is false. *)
  destination_volume_parameters :
    google_netapp_volume_replication__destination_volume_parameters
    list;
  timeouts : google_netapp_volume_replication__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_volume_replication *)

type t = {
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
  transfer_stats :
    google_netapp_volume_replication__transfer_stats list prop;
  volume_name : string prop;
  wait_for_mirror : bool prop;
}

let google_netapp_volume_replication ?delete_destination_volume
    ?description ?force_stopping ?id ?labels ?project
    ?replication_enabled ?wait_for_mirror ?timeouts ~location ~name
    ~replication_schedule ~volume_name ~destination_volume_parameters
    __resource_id =
  let __resource_type = "google_netapp_volume_replication" in
  let __resource =
    ({
       delete_destination_volume;
       description;
       force_stopping;
       id;
       labels;
       location;
       name;
       project;
       replication_enabled;
       replication_schedule;
       volume_name;
       wait_for_mirror;
       destination_volume_parameters;
       timeouts;
     }
      : google_netapp_volume_replication)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_volume_replication __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_destination_volume =
         Prop.computed __resource_type __resource_id
           "delete_destination_volume";
       description =
         Prop.computed __resource_type __resource_id "description";
       destination_volume =
         Prop.computed __resource_type __resource_id
           "destination_volume";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       force_stopping =
         Prop.computed __resource_type __resource_id "force_stopping";
       healthy =
         Prop.computed __resource_type __resource_id "healthy";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       mirror_state =
         Prop.computed __resource_type __resource_id "mirror_state";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       replication_enabled =
         Prop.computed __resource_type __resource_id
           "replication_enabled";
       replication_schedule =
         Prop.computed __resource_type __resource_id
           "replication_schedule";
       role = Prop.computed __resource_type __resource_id "role";
       source_volume =
         Prop.computed __resource_type __resource_id "source_volume";
       state = Prop.computed __resource_type __resource_id "state";
       state_details =
         Prop.computed __resource_type __resource_id "state_details";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       transfer_stats =
         Prop.computed __resource_type __resource_id "transfer_stats";
       volume_name =
         Prop.computed __resource_type __resource_id "volume_name";
       wait_for_mirror =
         Prop.computed __resource_type __resource_id
           "wait_for_mirror";
     }
      : t)
  in
  __resource_attributes
