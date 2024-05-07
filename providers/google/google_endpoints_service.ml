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

type apis__methods = {
  name : string prop;
  request_type : string prop;
  response_type : string prop;
  syntax : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : apis__methods) -> ()

let yojson_of_apis__methods =
  (function
   | {
       name = v_name;
       request_type = v_request_type;
       response_type = v_response_type;
       syntax = v_syntax;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_syntax in
         ("syntax", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_response_type in
         ("response_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request_type in
         ("request_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : apis__methods -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_apis__methods

[@@@deriving.end]

type apis = {
  methods : apis__methods list;
  name : string prop;
  syntax : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : apis) -> ()

let yojson_of_apis =
  (function
   | {
       methods = v_methods;
       name = v_name;
       syntax = v_syntax;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_syntax in
         ("syntax", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_apis__methods v_methods
         in
         ("methods", arg) :: bnds
       in
       `Assoc bnds
    : apis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_apis

[@@@deriving.end]

type endpoints = { address : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | { address = v_address; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type google_endpoints_service = {
  grpc_config : string prop option; [@option]
  id : string prop option; [@option]
  openapi_config : string prop option; [@option]
  project : string prop option; [@option]
  protoc_output_base64 : string prop option; [@option]
  service_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_endpoints_service) -> ()

let yojson_of_google_endpoints_service =
  (function
   | {
       grpc_config = v_grpc_config;
       id = v_id;
       openapi_config = v_openapi_config;
       project = v_project;
       protoc_output_base64 = v_protoc_output_base64;
       service_name = v_service_name;
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
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         match v_protoc_output_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protoc_output_base64", arg in
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
         match v_openapi_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "openapi_config", arg in
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
         match v_grpc_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grpc_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_endpoints_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_endpoints_service

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_endpoints_service ?grpc_config ?id ?openapi_config
    ?project ?protoc_output_base64 ?timeouts ~service_name () :
    google_endpoints_service =
  {
    grpc_config;
    id;
    openapi_config;
    project;
    protoc_output_base64;
    service_name;
    timeouts;
  }

type t = {
  tf_name : string;
  apis : apis list prop;
  config_id : string prop;
  dns_address : string prop;
  endpoints : endpoints list prop;
  grpc_config : string prop;
  id : string prop;
  openapi_config : string prop;
  project : string prop;
  protoc_output_base64 : string prop;
  service_name : string prop;
}

let make ?grpc_config ?id ?openapi_config ?project
    ?protoc_output_base64 ?timeouts ~service_name __id =
  let __type = "google_endpoints_service" in
  let __attrs =
    ({
       tf_name = __id;
       apis = Prop.computed __type __id "apis";
       config_id = Prop.computed __type __id "config_id";
       dns_address = Prop.computed __type __id "dns_address";
       endpoints = Prop.computed __type __id "endpoints";
       grpc_config = Prop.computed __type __id "grpc_config";
       id = Prop.computed __type __id "id";
       openapi_config = Prop.computed __type __id "openapi_config";
       project = Prop.computed __type __id "project";
       protoc_output_base64 =
         Prop.computed __type __id "protoc_output_base64";
       service_name = Prop.computed __type __id "service_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_endpoints_service
        (google_endpoints_service ?grpc_config ?id ?openapi_config
           ?project ?protoc_output_base64 ?timeouts ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?grpc_config ?id ?openapi_config ?project
    ?protoc_output_base64 ?timeouts ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?grpc_config ?id ?openapi_config ?project
      ?protoc_output_base64 ?timeouts ~service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
