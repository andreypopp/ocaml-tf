(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type telemetry = { resource_name : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : telemetry) -> ()

let yojson_of_telemetry =
  (function
   | { resource_name = v_resource_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : telemetry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_telemetry

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

type google_monitoring_custom_service = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  service_id : string prop option; [@option]
  user_labels : string prop Tf_core.assoc option; [@option]
  telemetry : telemetry list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_custom_service) -> ()

let yojson_of_google_monitoring_custom_service =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       project = v_project;
       service_id = v_service_id;
       user_labels = v_user_labels;
       telemetry = v_telemetry;
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
         if Stdlib.( = ) [] v_telemetry then bnds
         else
           let arg =
             (yojson_of_list yojson_of_telemetry) v_telemetry
           in
           let bnd = "telemetry", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_id", arg in
             bnd :: bnds
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
    : google_monitoring_custom_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_custom_service

[@@@deriving.end]

let telemetry ?resource_name () : telemetry = { resource_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_custom_service ?display_name ?id ?project
    ?service_id ?user_labels ?(telemetry = []) ?timeouts () :
    google_monitoring_custom_service =
  {
    display_name;
    id;
    project;
    service_id;
    user_labels;
    telemetry;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  user_labels : string Tf_core.assoc prop;
}

let make ?display_name ?id ?project ?service_id ?user_labels
    ?(telemetry = []) ?timeouts __id =
  let __type = "google_monitoring_custom_service" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_custom_service
        (google_monitoring_custom_service ?display_name ?id ?project
           ?service_id ?user_labels ~telemetry ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?service_id
    ?user_labels ?(telemetry = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?service_id ?user_labels
      ~telemetry ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
