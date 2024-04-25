(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type node_config = {
  max_node_count : string prop option; [@option]
  min_node_count : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

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

type google_apigee_environment = {
  api_proxy_type : string prop option; [@option]
  deployment_type : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  org_id : string prop;
  type_ : string prop option; [@option] [@key "type"]
  node_config : node_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_environment) -> ()

let yojson_of_google_apigee_environment =
  (function
   | {
       api_proxy_type = v_api_proxy_type;
       deployment_type = v_deployment_type;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       org_id = v_org_id;
       type_ = v_type_;
       node_config = v_node_config;
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
           yojson_of_list yojson_of_node_config v_node_config
         in
         ("node_config", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_proxy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_proxy_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_environment

[@@@deriving.end]

let node_config ?max_node_count ?min_node_count () : node_config =
  { max_node_count; min_node_count }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_environment ?api_proxy_type ?deployment_type
    ?description ?display_name ?id ?type_ ?(node_config = [])
    ?timeouts ~name ~org_id () : google_apigee_environment =
  {
    api_proxy_type;
    deployment_type;
    description;
    display_name;
    id;
    name;
    org_id;
    type_;
    node_config;
    timeouts;
  }

type t = {
  api_proxy_type : string prop;
  deployment_type : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
  type_ : string prop;
}

let make ?api_proxy_type ?deployment_type ?description ?display_name
    ?id ?type_ ?(node_config = []) ?timeouts ~name ~org_id __id =
  let __type = "google_apigee_environment" in
  let __attrs =
    ({
       api_proxy_type = Prop.computed __type __id "api_proxy_type";
       deployment_type = Prop.computed __type __id "deployment_type";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_environment
        (google_apigee_environment ?api_proxy_type ?deployment_type
           ?description ?display_name ?id ?type_ ~node_config
           ?timeouts ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?api_proxy_type ?deployment_type ?description
    ?display_name ?id ?type_ ?(node_config = []) ?timeouts ~name
    ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?api_proxy_type ?deployment_type ?description ?display_name
      ?id ?type_ ~node_config ?timeouts ~name ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
