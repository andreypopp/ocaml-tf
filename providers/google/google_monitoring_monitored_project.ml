(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_monitoring_monitored_project = {
  id : string prop option; [@option]
  metrics_scope : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_monitored_project) -> ()

let yojson_of_google_monitoring_monitored_project =
  (function
   | {
       id = v_id;
       metrics_scope = v_metrics_scope;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metrics_scope in
         ("metrics_scope", arg) :: bnds
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
    : google_monitoring_monitored_project ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_monitored_project

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_monitoring_monitored_project ?id ?timeouts ~metrics_scope
    ~name () : google_monitoring_monitored_project =
  { id; metrics_scope; name; timeouts }

type t = {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  metrics_scope : string prop;
  name : string prop;
}

let make ?id ?timeouts ~metrics_scope ~name __id =
  let __type = "google_monitoring_monitored_project" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       metrics_scope = Prop.computed __type __id "metrics_scope";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_monitored_project
        (google_monitoring_monitored_project ?id ?timeouts
           ~metrics_scope ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~metrics_scope ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~metrics_scope ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
