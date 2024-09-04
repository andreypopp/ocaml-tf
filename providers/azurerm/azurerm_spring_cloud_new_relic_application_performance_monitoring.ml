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

type azurerm_spring_cloud_new_relic_application_performance_monitoring = {
  agent_enabled : bool prop option; [@option]
  app_name : string prop;
  app_server_port : float prop option; [@option]
  audit_mode_enabled : bool prop option; [@option]
  auto_app_naming_enabled : bool prop option; [@option]
  auto_transaction_naming_enabled : bool prop option; [@option]
  custom_tracing_enabled : bool prop option; [@option]
  globally_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  license_key : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_spring_cloud_new_relic_application_performance_monitoring) ->
  ()

let yojson_of_azurerm_spring_cloud_new_relic_application_performance_monitoring
    =
  (function
   | {
       agent_enabled = v_agent_enabled;
       app_name = v_app_name;
       app_server_port = v_app_server_port;
       audit_mode_enabled = v_audit_mode_enabled;
       auto_app_naming_enabled = v_auto_app_naming_enabled;
       auto_transaction_naming_enabled =
         v_auto_transaction_naming_enabled;
       custom_tracing_enabled = v_custom_tracing_enabled;
       globally_enabled = v_globally_enabled;
       id = v_id;
       labels = v_labels;
       license_key = v_license_key;
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
         let arg = yojson_of_prop yojson_of_string v_license_key in
         ("license_key", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_globally_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "globally_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_tracing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "custom_tracing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_transaction_naming_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_transaction_naming_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_app_naming_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_app_naming_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_mode_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "audit_mode_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_server_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_server_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_name in
         ("app_name", arg) :: bnds
       in
       let bnds =
         match v_agent_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "agent_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_new_relic_application_performance_monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_spring_cloud_new_relic_application_performance_monitoring

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_new_relic_application_performance_monitoring
    ?agent_enabled ?app_server_port ?audit_mode_enabled
    ?auto_app_naming_enabled ?auto_transaction_naming_enabled
    ?custom_tracing_enabled ?globally_enabled ?id ?labels ?timeouts
    ~app_name ~license_key ~name ~spring_cloud_service_id () :
    azurerm_spring_cloud_new_relic_application_performance_monitoring
    =
  {
    agent_enabled;
    app_name;
    app_server_port;
    audit_mode_enabled;
    auto_app_naming_enabled;
    auto_transaction_naming_enabled;
    custom_tracing_enabled;
    globally_enabled;
    id;
    labels;
    license_key;
    name;
    spring_cloud_service_id;
    timeouts;
  }

type t = {
  tf_name : string;
  agent_enabled : bool prop;
  app_name : string prop;
  app_server_port : float prop;
  audit_mode_enabled : bool prop;
  auto_app_naming_enabled : bool prop;
  auto_transaction_naming_enabled : bool prop;
  custom_tracing_enabled : bool prop;
  globally_enabled : bool prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  license_key : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let make ?agent_enabled ?app_server_port ?audit_mode_enabled
    ?auto_app_naming_enabled ?auto_transaction_naming_enabled
    ?custom_tracing_enabled ?globally_enabled ?id ?labels ?timeouts
    ~app_name ~license_key ~name ~spring_cloud_service_id __id =
  let __type =
    "azurerm_spring_cloud_new_relic_application_performance_monitoring"
  in
  let __attrs =
    ({
       tf_name = __id;
       agent_enabled = Prop.computed __type __id "agent_enabled";
       app_name = Prop.computed __type __id "app_name";
       app_server_port = Prop.computed __type __id "app_server_port";
       audit_mode_enabled =
         Prop.computed __type __id "audit_mode_enabled";
       auto_app_naming_enabled =
         Prop.computed __type __id "auto_app_naming_enabled";
       auto_transaction_naming_enabled =
         Prop.computed __type __id "auto_transaction_naming_enabled";
       custom_tracing_enabled =
         Prop.computed __type __id "custom_tracing_enabled";
       globally_enabled =
         Prop.computed __type __id "globally_enabled";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       license_key = Prop.computed __type __id "license_key";
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
      yojson_of_azurerm_spring_cloud_new_relic_application_performance_monitoring
        (azurerm_spring_cloud_new_relic_application_performance_monitoring
           ?agent_enabled ?app_server_port ?audit_mode_enabled
           ?auto_app_naming_enabled ?auto_transaction_naming_enabled
           ?custom_tracing_enabled ?globally_enabled ?id ?labels
           ?timeouts ~app_name ~license_key ~name
           ~spring_cloud_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_enabled ?app_server_port
    ?audit_mode_enabled ?auto_app_naming_enabled
    ?auto_transaction_naming_enabled ?custom_tracing_enabled
    ?globally_enabled ?id ?labels ?timeouts ~app_name ~license_key
    ~name ~spring_cloud_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?agent_enabled ?app_server_port ?audit_mode_enabled
      ?auto_app_naming_enabled ?auto_transaction_naming_enabled
      ?custom_tracing_enabled ?globally_enabled ?id ?labels ?timeouts
      ~app_name ~license_key ~name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
