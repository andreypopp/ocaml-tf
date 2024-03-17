(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_project_metadata_item__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_project_metadata_item__timeouts *)

type google_compute_project_metadata_item = {
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** The metadata key to set. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  value : string prop;
      (** The value to set for the given metadata key. *)
  timeouts : google_compute_project_metadata_item__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_metadata_item *)

type t = {
  id : string prop;
  key : string prop;
  project : string prop;
  value : string prop;
}

let google_compute_project_metadata_item ?id ?project ?timeouts ~key
    ~value __resource_id =
  let __resource_type = "google_compute_project_metadata_item" in
  let __resource =
    ({ id; key; project; value; timeouts }
      : google_compute_project_metadata_item)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_project_metadata_item __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       project =
         Prop.computed __resource_type __resource_id "project";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
