(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_project_metadata__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_project_metadata__timeouts *)

type google_compute_project_metadata = {
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list;
      (** A series of key value pairs. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts : google_compute_project_metadata__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_metadata *)

type t = {
  id : string prop;
  metadata : (string * string) list prop;
  project : string prop;
}

let google_compute_project_metadata ?id ?project ?timeouts ~metadata
    __resource_id =
  let __resource_type = "google_compute_project_metadata" in
  let __resource =
    ({ id; metadata; project; timeouts }
      : google_compute_project_metadata)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_project_metadata __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
