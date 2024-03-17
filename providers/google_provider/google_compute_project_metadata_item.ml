(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_project_metadata_item__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_project_metadata_item__timeouts *)

type google_compute_project_metadata_item = {
  key : string;  (** The metadata key to set. *)
  value : string;
      (** The value to set for the given metadata key. *)
  timeouts : google_compute_project_metadata_item__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_metadata_item *)

let google_compute_project_metadata_item ?timeouts ~key ~value
    __resource_id =
  let __resource_type = "google_compute_project_metadata_item" in
  let __resource = { key; value; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_project_metadata_item __resource);
  ()
