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

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring = {
  agent_account_access_key : string prop;
  agent_account_name : string prop;
  agent_application_name : string prop option; [@option]
  agent_node_name : string prop option; [@option]
  agent_tier_name : string prop option; [@option]
  agent_unique_host_id : string prop option; [@option]
  controller_host_name : string prop;
  controller_port : float prop option; [@option]
  controller_ssl_enabled : bool prop option; [@option]
  globally_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_service_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_spring_cloud_app_dynamics_application_performance_monitoring) ->
  ()

let yojson_of_azurerm_spring_cloud_app_dynamics_application_performance_monitoring
    =
  (function
   | {
       agent_account_access_key = v_agent_account_access_key;
       agent_account_name = v_agent_account_name;
       agent_application_name = v_agent_application_name;
       agent_node_name = v_agent_node_name;
       agent_tier_name = v_agent_tier_name;
       agent_unique_host_id = v_agent_unique_host_id;
       controller_host_name = v_controller_host_name;
       controller_port = v_controller_port;
       controller_ssl_enabled = v_controller_ssl_enabled;
       globally_enabled = v_globally_enabled;
       id = v_id;
       name = v_name;
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
         match v_controller_ssl_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "controller_ssl_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_controller_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "controller_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_controller_host_name
         in
         ("controller_host_name", arg) :: bnds
       in
       let bnds =
         match v_agent_unique_host_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_unique_host_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agent_tier_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_tier_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agent_node_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_node_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agent_application_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_application_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_agent_account_name
         in
         ("agent_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_agent_account_access_key
         in
         ("agent_account_access_key", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_app_dynamics_application_performance_monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_spring_cloud_app_dynamics_application_performance_monitoring

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app_dynamics_application_performance_monitoring
    ?agent_application_name ?agent_node_name ?agent_tier_name
    ?agent_unique_host_id ?controller_port ?controller_ssl_enabled
    ?globally_enabled ?id ?timeouts ~agent_account_access_key
    ~agent_account_name ~controller_host_name ~name
    ~spring_cloud_service_id () :
    azurerm_spring_cloud_app_dynamics_application_performance_monitoring
    =
  {
    agent_account_access_key;
    agent_account_name;
    agent_application_name;
    agent_node_name;
    agent_tier_name;
    agent_unique_host_id;
    controller_host_name;
    controller_port;
    controller_ssl_enabled;
    globally_enabled;
    id;
    name;
    spring_cloud_service_id;
    timeouts;
  }

type t = {
  tf_name : string;
  agent_account_access_key : string prop;
  agent_account_name : string prop;
  agent_application_name : string prop;
  agent_node_name : string prop;
  agent_tier_name : string prop;
  agent_unique_host_id : string prop;
  controller_host_name : string prop;
  controller_port : float prop;
  controller_ssl_enabled : bool prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let make ?agent_application_name ?agent_node_name ?agent_tier_name
    ?agent_unique_host_id ?controller_port ?controller_ssl_enabled
    ?globally_enabled ?id ?timeouts ~agent_account_access_key
    ~agent_account_name ~controller_host_name ~name
    ~spring_cloud_service_id __id =
  let __type =
    "azurerm_spring_cloud_app_dynamics_application_performance_monitoring"
  in
  let __attrs =
    ({
       tf_name = __id;
       agent_account_access_key =
         Prop.computed __type __id "agent_account_access_key";
       agent_account_name =
         Prop.computed __type __id "agent_account_name";
       agent_application_name =
         Prop.computed __type __id "agent_application_name";
       agent_node_name = Prop.computed __type __id "agent_node_name";
       agent_tier_name = Prop.computed __type __id "agent_tier_name";
       agent_unique_host_id =
         Prop.computed __type __id "agent_unique_host_id";
       controller_host_name =
         Prop.computed __type __id "controller_host_name";
       controller_port = Prop.computed __type __id "controller_port";
       controller_ssl_enabled =
         Prop.computed __type __id "controller_ssl_enabled";
       globally_enabled =
         Prop.computed __type __id "globally_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_app_dynamics_application_performance_monitoring
        (azurerm_spring_cloud_app_dynamics_application_performance_monitoring
           ?agent_application_name ?agent_node_name ?agent_tier_name
           ?agent_unique_host_id ?controller_port
           ?controller_ssl_enabled ?globally_enabled ?id ?timeouts
           ~agent_account_access_key ~agent_account_name
           ~controller_host_name ~name ~spring_cloud_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_application_name ?agent_node_name
    ?agent_tier_name ?agent_unique_host_id ?controller_port
    ?controller_ssl_enabled ?globally_enabled ?id ?timeouts
    ~agent_account_access_key ~agent_account_name
    ~controller_host_name ~name ~spring_cloud_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?agent_application_name ?agent_node_name ?agent_tier_name
      ?agent_unique_host_id ?controller_port ?controller_ssl_enabled
      ?globally_enabled ?id ?timeouts ~agent_account_access_key
      ~agent_account_name ~controller_host_name ~name
      ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
