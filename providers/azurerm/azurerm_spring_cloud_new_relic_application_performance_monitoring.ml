(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_new_relic_application_performance_monitoring = {
  agent_enabled : bool prop option; [@option]  (** agent_enabled *)
  app_name : string prop;  (** app_name *)
  app_server_port : float prop option; [@option]
      (** app_server_port *)
  audit_mode_enabled : bool prop option; [@option]
      (** audit_mode_enabled *)
  auto_app_naming_enabled : bool prop option; [@option]
      (** auto_app_naming_enabled *)
  auto_transaction_naming_enabled : bool prop option; [@option]
      (** auto_transaction_naming_enabled *)
  custom_tracing_enabled : bool prop option; [@option]
      (** custom_tracing_enabled *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  license_key : string prop;  (** license_key *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_new_relic_application_performance_monitoring *)

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
  agent_enabled : bool prop;
  app_name : string prop;
  app_server_port : float prop;
  audit_mode_enabled : bool prop;
  auto_app_naming_enabled : bool prop;
  auto_transaction_naming_enabled : bool prop;
  custom_tracing_enabled : bool prop;
  globally_enabled : bool prop;
  id : string prop;
  labels : (string * string) list prop;
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
