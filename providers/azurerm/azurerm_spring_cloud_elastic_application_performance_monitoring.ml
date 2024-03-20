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

type azurerm_spring_cloud_elastic_application_performance_monitoring = {
  application_packages : string prop list;
  globally_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  server_url : string prop;
  service_name : string prop;
  spring_cloud_service_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_spring_cloud_elastic_application_performance_monitoring) ->
  ()

let yojson_of_azurerm_spring_cloud_elastic_application_performance_monitoring
    =
  (function
   | {
       application_packages = v_application_packages;
       globally_enabled = v_globally_enabled;
       id = v_id;
       name = v_name;
       server_url = v_server_url;
       service_name = v_service_name;
       spring_cloud_service_id = v_spring_cloud_service_id;
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
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_url in
         ("server_url", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_application_packages
         in
         ("application_packages", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_elastic_application_performance_monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_spring_cloud_elastic_application_performance_monitoring

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_elastic_application_performance_monitoring
    ?globally_enabled ?id ?timeouts ~application_packages ~name
    ~server_url ~service_name ~spring_cloud_service_id () :
    azurerm_spring_cloud_elastic_application_performance_monitoring =
  {
    application_packages;
    globally_enabled;
    id;
    name;
    server_url;
    service_name;
    spring_cloud_service_id;
    timeouts;
  }

type t = {
  application_packages : string list prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  server_url : string prop;
  service_name : string prop;
  spring_cloud_service_id : string prop;
}

let make ?globally_enabled ?id ?timeouts ~application_packages ~name
    ~server_url ~service_name ~spring_cloud_service_id __id =
  let __type =
    "azurerm_spring_cloud_elastic_application_performance_monitoring"
  in
  let __attrs =
    ({
       application_packages =
         Prop.computed __type __id "application_packages";
       globally_enabled =
         Prop.computed __type __id "globally_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_url = Prop.computed __type __id "server_url";
       service_name = Prop.computed __type __id "service_name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_elastic_application_performance_monitoring
        (azurerm_spring_cloud_elastic_application_performance_monitoring
           ?globally_enabled ?id ?timeouts ~application_packages
           ~name ~server_url ~service_name ~spring_cloud_service_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?globally_enabled ?id ?timeouts
    ~application_packages ~name ~server_url ~service_name
    ~spring_cloud_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?globally_enabled ?id ?timeouts ~application_packages ~name
      ~server_url ~service_name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
