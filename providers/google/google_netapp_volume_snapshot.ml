(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_netapp_volume_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_volume_snapshot__timeouts *)

type google_netapp_volume_snapshot = {
  description : string prop option; [@option]
      (** Description for the snapshot. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Name of the snapshot location. Snapshots are child resources of volumes and live in the same location. *)
  name : string prop;  (** The name of the snapshot. *)
  project : string prop option; [@option]  (** project *)
  volume_name : string prop;
      (** The name of the volume to create the snapshot in. *)
  timeouts : google_netapp_volume_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_volume_snapshot *)

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  used_bytes : float prop;
  volume_name : string prop;
}

let google_netapp_volume_snapshot ?description ?id ?labels ?project
    ?timeouts ~location ~name ~volume_name __resource_id =
  let __resource_type = "google_netapp_volume_snapshot" in
  let __resource =
    ({
       description;
       id;
       labels;
       location;
       name;
       project;
       volume_name;
       timeouts;
     }
      : google_netapp_volume_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_volume_snapshot __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       used_bytes =
         Prop.computed __resource_type __resource_id "used_bytes";
       volume_name =
         Prop.computed __resource_type __resource_id "volume_name";
     }
      : t)
  in
  __resource_attributes
