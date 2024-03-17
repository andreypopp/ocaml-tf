(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_project_service__timeouts *)

type google_project_service = {
  disable_dependent_services : bool option; [@option]
      (** disable_dependent_services *)
  disable_on_destroy : bool option; [@option]
      (** disable_on_destroy *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  service : string;  (** service *)
  timeouts : google_project_service__timeouts option;
}
[@@deriving yojson_of]
(** google_project_service *)

let google_project_service ?disable_dependent_services
    ?disable_on_destroy ?id ?project ?timeouts ~service __resource_id
    =
  let __resource_type = "google_project_service" in
  let __resource =
    {
      disable_dependent_services;
      disable_on_destroy;
      id;
      project;
      service;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_service __resource);
  ()
