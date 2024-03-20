(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_project_service = {
  disable_dependent_services : bool prop option; [@option]
  disable_on_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  service : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_service) -> ()

let yojson_of_google_project_service =
  (function
   | {
       disable_dependent_services = v_disable_dependent_services;
       disable_on_destroy = v_disable_on_destroy;
       id = v_id;
       project = v_project;
       service = v_service;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_dependent_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_dependent_services", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_project_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_service

[@@@deriving.end]

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
