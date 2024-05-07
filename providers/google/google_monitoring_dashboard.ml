(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_monitoring_dashboard = {
  dashboard_json : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_dashboard) -> ()

let yojson_of_google_monitoring_dashboard =
  (function
   | {
       dashboard_json = v_dashboard_json;
       id = v_id;
       project = v_project;
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
         let arg =
           yojson_of_prop yojson_of_string v_dashboard_json
         in
         ("dashboard_json", arg) :: bnds
       in
       `Assoc bnds
    : google_monitoring_dashboard ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_dashboard

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_dashboard ?id ?project ?timeouts
    ~dashboard_json () : google_monitoring_dashboard =
  { dashboard_json; id; project; timeouts }

type t = {
  tf_name : string;
  dashboard_json : string prop;
  id : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~dashboard_json __id =
  let __type = "google_monitoring_dashboard" in
  let __attrs =
    ({
       tf_name = __id;
       dashboard_json = Prop.computed __type __id "dashboard_json";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_dashboard
        (google_monitoring_dashboard ?id ?project ?timeouts
           ~dashboard_json ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~dashboard_json __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~dashboard_json __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
