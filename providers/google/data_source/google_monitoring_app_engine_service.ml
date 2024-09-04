(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type telemetry = { resource_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : telemetry) -> ()

let yojson_of_telemetry =
  (function
   | { resource_name = v_resource_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_name in
         ("resource_name", arg) :: bnds
       in
       `Assoc bnds
    : telemetry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_telemetry

[@@@deriving.end]

type google_monitoring_app_engine_service = {
  id : string prop option; [@option]
  module_id : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_app_engine_service) -> ()

let yojson_of_google_monitoring_app_engine_service =
  (function
   | { id = v_id; module_id = v_module_id; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_module_id in
         ("module_id", arg) :: bnds
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
    : google_monitoring_app_engine_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_app_engine_service

[@@@deriving.end]

let google_monitoring_app_engine_service ?id ?project ~module_id () :
    google_monitoring_app_engine_service =
  { id; module_id; project }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  module_id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  telemetry : telemetry list prop;
  user_labels : string Tf_core.assoc prop;
}

let make ?id ?project ~module_id __id =
  let __type = "google_monitoring_app_engine_service" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       module_id = Prop.computed __type __id "module_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
       telemetry = Prop.computed __type __id "telemetry";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_app_engine_service
        (google_monitoring_app_engine_service ?id ?project ~module_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~module_id __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~module_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
