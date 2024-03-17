(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_location__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_notebooks_location__timeouts *)

type google_notebooks_location = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Name of the Location resource. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_notebooks_location__timeouts option;
}
[@@deriving yojson_of]
(** google_notebooks_location *)

let google_notebooks_location ?id ?name ?project ?timeouts
    __resource_id =
  let __resource_type = "google_notebooks_location" in
  let __resource = { id; name; project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_location __resource);
  ()
