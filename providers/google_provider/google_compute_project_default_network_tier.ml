(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_project_default_network_tier__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** google_compute_project_default_network_tier__timeouts *)

type google_compute_project_default_network_tier = {
  id : string prop option; [@option]  (** id *)
  network_tier : string prop;
      (** The default network tier to be configured for the project. This field can take the following values: PREMIUM or STANDARD. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts :
    google_compute_project_default_network_tier__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_default_network_tier *)

let google_compute_project_default_network_tier ?id ?project
    ?timeouts ~network_tier __resource_id =
  let __resource_type =
    "google_compute_project_default_network_tier"
  in
  let __resource = { id; network_tier; project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_project_default_network_tier __resource);
  ()
