(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_project_service = {
  disable_dependent_services : bool prop option; [@option]
      (** disable_dependent_services *)
  disable_on_destroy : bool prop option; [@option]
      (** disable_on_destroy *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service : string prop;  (** service *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_project_service *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_project_service ?disable_dependent_services
    ?disable_on_destroy ?id ?project ?timeouts ~service () :
    google_project_service =
  {
    disable_dependent_services;
    disable_on_destroy;
    id;
    project;
    service;
    timeouts;
  }

type t = {
  disable_dependent_services : bool prop;
  disable_on_destroy : bool prop;
  id : string prop;
  project : string prop;
  service : string prop;
}

let register ?tf_module ?disable_dependent_services
    ?disable_on_destroy ?id ?project ?timeouts ~service __resource_id
    =
  let __resource_type = "google_project_service" in
  let __resource =
    google_project_service ?disable_dependent_services
      ?disable_on_destroy ?id ?project ?timeouts ~service ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_service __resource);
  let __resource_attributes =
    ({
       disable_dependent_services =
         Prop.computed __resource_type __resource_id
           "disable_dependent_services";
       disable_on_destroy =
         Prop.computed __resource_type __resource_id
           "disable_on_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       service =
         Prop.computed __resource_type __resource_id "service";
     }
      : t)
  in
  __resource_attributes
