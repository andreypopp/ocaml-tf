(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_notebooks_location__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_notebooks_location__timeouts *)

type google_notebooks_location = {
  name : string option; [@option]
      (** Name of the Location resource. *)
  timeouts : google_notebooks_location__timeouts option;
}
[@@deriving yojson_of]
(** google_notebooks_location *)

let google_notebooks_location ?name ?timeouts __resource_id =
  let __resource_type = "google_notebooks_location" in
  let __resource = { name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_location __resource);
  ()
