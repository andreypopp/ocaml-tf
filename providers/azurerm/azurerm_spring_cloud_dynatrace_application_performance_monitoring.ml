(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_spring_cloud_dynatrace_application_performance_monitoring = {
  api_token : string prop option; [@option]
  api_url : string prop option; [@option]
  connection_point : string prop;
  environment_id : string prop option; [@option]
  globally_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_service_id : string prop;
  tenant : string prop;
  tenant_token : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_spring_cloud_dynatrace_application_performance_monitoring) ->
  ()

let yojson_of_azurerm_spring_cloud_dynatrace_application_performance_monitoring
    =
  (function
   | {
       api_token = v_api_token;
       api_url = v_api_url;
       connection_point = v_connection_point;
       environment_id = v_environment_id;
       globally_enabled = v_globally_enabled;
       id = v_id;
       name = v_name;
       spring_cloud_service_id = v_spring_cloud_service_id;
       tenant = v_tenant;
       tenant_token = v_tenant_token;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_token in
         ("tenant_token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant in
         ("tenant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
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
         match v_globally_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "globally_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_point
         in
         ("connection_point", arg) :: bnds
       in
       let bnds =
         match v_api_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_dynatrace_application_performance_monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_spring_cloud_dynatrace_application_performance_monitoring

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_dynatrace_application_performance_monitoring
    ?api_token ?api_url ?environment_id ?globally_enabled ?id
    ?timeouts ~connection_point ~name ~spring_cloud_service_id
    ~tenant ~tenant_token () :
    azurerm_spring_cloud_dynatrace_application_performance_monitoring
    =
  {
    api_token;
    api_url;
    connection_point;
    environment_id;
    globally_enabled;
    id;
    name;
    spring_cloud_service_id;
    tenant;
    tenant_token;
    timeouts;
  }

type t = {
  api_token : string prop;
  api_url : string prop;
  connection_point : string prop;
  environment_id : string prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  tenant : string prop;
  tenant_token : string prop;
}

let make ?api_token ?api_url ?environment_id ?globally_enabled ?id
    ?timeouts ~connection_point ~name ~spring_cloud_service_id
    ~tenant ~tenant_token __id =
  let __type =
    "azurerm_spring_cloud_dynatrace_application_performance_monitoring"
  in
  let __attrs =
    ({
       api_token = Prop.computed __type __id "api_token";
       api_url = Prop.computed __type __id "api_url";
       connection_point =
         Prop.computed __type __id "connection_point";
       environment_id = Prop.computed __type __id "environment_id";
       globally_enabled =
         Prop.computed __type __id "globally_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
       tenant = Prop.computed __type __id "tenant";
       tenant_token = Prop.computed __type __id "tenant_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_dynatrace_application_performance_monitoring
        (azurerm_spring_cloud_dynatrace_application_performance_monitoring
           ?api_token ?api_url ?environment_id ?globally_enabled ?id
           ?timeouts ~connection_point ~name ~spring_cloud_service_id
           ~tenant ~tenant_token ());
    attrs = __attrs;
  }

let register ?tf_module ?api_token ?api_url ?environment_id
    ?globally_enabled ?id ?timeouts ~connection_point ~name
    ~spring_cloud_service_id ~tenant ~tenant_token __id =
  let (r : _ Tf_core.resource) =
    make ?api_token ?api_url ?environment_id ?globally_enabled ?id
      ?timeouts ~connection_point ~name ~spring_cloud_service_id
      ~tenant ~tenant_token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
