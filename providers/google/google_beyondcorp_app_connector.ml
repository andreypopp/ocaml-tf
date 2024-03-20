(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type principal_info__service_account = { email : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : principal_info__service_account) -> ()

let yojson_of_principal_info__service_account =
  (function
   | { email = v_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : principal_info__service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_principal_info__service_account

[@@@deriving.end]

type principal_info = {
  service_account : principal_info__service_account list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : principal_info) -> ()

let yojson_of_principal_info =
  (function
   | { service_account = v_service_account } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_principal_info__service_account
             v_service_account
         in
         ("service_account", arg) :: bnds
       in
       `Assoc bnds
    : principal_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_principal_info

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

type google_beyondcorp_app_connector = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  principal_info : principal_info list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_beyondcorp_app_connector) -> ()

let yojson_of_google_beyondcorp_app_connector =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       principal_info = v_principal_info;
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
           yojson_of_list yojson_of_principal_info v_principal_info
         in
         ("principal_info", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
    : google_beyondcorp_app_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_beyondcorp_app_connector

[@@@deriving.end]

let principal_info__service_account ~email () :
    principal_info__service_account =
  { email }

let principal_info ~service_account () : principal_info =
  { service_account }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_beyondcorp_app_connector ?display_name ?id ?labels
    ?project ?region ?timeouts ~name ~principal_info () :
    google_beyondcorp_app_connector =
  {
    display_name;
    id;
    labels;
    name;
    project;
    region;
    principal_info;
    timeouts;
  }

type t = {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?display_name ?id ?labels ?project ?region ?timeouts ~name
    ~principal_info __id =
  let __type = "google_beyondcorp_app_connector" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_connector
        (google_beyondcorp_app_connector ?display_name ?id ?labels
           ?project ?region ?timeouts ~name ~principal_info ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?labels ?project ?region
    ?timeouts ~name ~principal_info __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?labels ?project ?region ?timeouts ~name
      ~principal_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
