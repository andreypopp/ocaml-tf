(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?disable_dependent_services ?disable_on_destroy ?id ?project
    ?timeouts ~service __id =
  let __type = "google_project_service" in
  let __attrs =
    ({
       disable_dependent_services =
         Prop.computed __type __id "disable_dependent_services";
       disable_on_destroy =
         Prop.computed __type __id "disable_on_destroy";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_service
        (google_project_service ?disable_dependent_services
           ?disable_on_destroy ?id ?project ?timeouts ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_dependent_services
    ?disable_on_destroy ?id ?project ?timeouts ~service __id =
  let (r : _ Tf_core.resource) =
    make ?disable_dependent_services ?disable_on_destroy ?id ?project
      ?timeouts ~service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
