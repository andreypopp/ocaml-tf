(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_settings = {
  ingress_traffic_allowed : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_settings) -> ()

let yojson_of_network_settings =
  (function
   | { ingress_traffic_allowed = v_ingress_traffic_allowed } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ingress_traffic_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingress_traffic_allowed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_settings

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_app_engine_service_network_settings = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  service : string prop;
  network_settings : network_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_service_network_settings) -> ()

let yojson_of_google_app_engine_service_network_settings =
  (function
   | {
       id = v_id;
       project = v_project;
       service = v_service;
       network_settings = v_network_settings;
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
         if Stdlib.( = ) [] v_network_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_settings)
               v_network_settings
           in
           let bnd = "network_settings", arg in
           bnd :: bnds
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
       `Assoc bnds
    : google_app_engine_service_network_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_service_network_settings

[@@@deriving.end]

let network_settings ?ingress_traffic_allowed () : network_settings =
  { ingress_traffic_allowed }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_service_network_settings ?id ?project ?timeouts
    ~service ~network_settings () :
    google_app_engine_service_network_settings =
  { id; project; service; network_settings; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  project : string prop;
  service : string prop;
}

let make ?id ?project ?timeouts ~service ~network_settings __id =
  let __type = "google_app_engine_service_network_settings" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_google_app_engine_service_network_settings
        (google_app_engine_service_network_settings ?id ?project
           ?timeouts ~service ~network_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~service
    ~network_settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~service ~network_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
