(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type basic_service = {
  service_labels : (string * string prop) list option; [@option]
  service_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_service) -> ()

let yojson_of_basic_service =
  (function
   | {
       service_labels = v_service_labels;
       service_type = v_service_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "service_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : basic_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_service

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

type google_monitoring_service = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  service_id : string prop;
  user_labels : (string * string prop) list option; [@option]
  basic_service : basic_service list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_service) -> ()

let yojson_of_google_monitoring_service =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       project = v_project;
       service_id = v_service_id;
       user_labels = v_user_labels;
       basic_service = v_basic_service;
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
         let arg =
           yojson_of_list yojson_of_basic_service v_basic_service
         in
         ("basic_service", arg) :: bnds
       in
       let bnds =
         match v_user_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_monitoring_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_service

[@@@deriving.end]

let basic_service ?service_labels ?service_type () : basic_service =
  { service_labels; service_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_service ?display_name ?id ?project ?user_labels
    ?(basic_service = []) ?timeouts ~service_id () :
    google_monitoring_service =
  {
    display_name;
    id;
    project;
    service_id;
    user_labels;
    basic_service;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  telemetry : telemetry list prop;
  user_labels : (string * string) list prop;
}

let make ?display_name ?id ?project ?user_labels
    ?(basic_service = []) ?timeouts ~service_id __id =
  let __type = "google_monitoring_service" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
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
      yojson_of_google_monitoring_service
        (google_monitoring_service ?display_name ?id ?project
           ?user_labels ~basic_service ?timeouts ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?user_labels
    ?(basic_service = []) ?timeouts ~service_id __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?user_labels ~basic_service
      ?timeouts ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
