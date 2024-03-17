(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_netapp_volume_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_volume_snapshot__timeouts *)

type google_netapp_volume_snapshot = {
  description : string option; [@option]
      (** Description for the snapshot. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Name of the snapshot location. Snapshots are child resources of volumes and live in the same location. *)
  name : string;  (** The name of the snapshot. *)
  volume_name : string;
      (** The name of the volume to create the snapshot in. *)
  timeouts : google_netapp_volume_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_volume_snapshot *)

let google_netapp_volume_snapshot ?description ?labels ?timeouts
    ~location ~name ~volume_name __resource_id =
  let __resource_type = "google_netapp_volume_snapshot" in
  let __resource =
    { description; labels; location; name; volume_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_volume_snapshot __resource);
  ()
