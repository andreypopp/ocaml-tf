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

type google_apphub_service_project_attachment = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  service_project : string prop option; [@option]
  service_project_attachment_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apphub_service_project_attachment) -> ()

let yojson_of_google_apphub_service_project_attachment =
  (function
   | {
       id = v_id;
       project = v_project;
       service_project = v_service_project;
       service_project_attachment_id =
         v_service_project_attachment_id;
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
           yojson_of_prop yojson_of_string
             v_service_project_attachment_id
         in
         ("service_project_attachment_id", arg) :: bnds
       in
       let bnds =
         match v_service_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_project", arg in
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
       `Assoc bnds
    : google_apphub_service_project_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apphub_service_project_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apphub_service_project_attachment ?id ?project
    ?service_project ?timeouts ~service_project_attachment_id () :
    google_apphub_service_project_attachment =
  {
    id;
    project;
    service_project;
    service_project_attachment_id;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_project : string prop;
  service_project_attachment_id : string prop;
  state : string prop;
  uid : string prop;
}

let make ?id ?project ?service_project ?timeouts
    ~service_project_attachment_id __id =
  let __type = "google_apphub_service_project_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_project = Prop.computed __type __id "service_project";
       service_project_attachment_id =
         Prop.computed __type __id "service_project_attachment_id";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apphub_service_project_attachment
        (google_apphub_service_project_attachment ?id ?project
           ?service_project ?timeouts ~service_project_attachment_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?service_project ?timeouts
    ~service_project_attachment_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?service_project ?timeouts
      ~service_project_attachment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
