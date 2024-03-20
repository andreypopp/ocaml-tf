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

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring = {
  agent_account_access_key : string prop;
      (** agent_account_access_key *)
  agent_account_name : string prop;  (** agent_account_name *)
  agent_application_name : string prop option; [@option]
      (** agent_application_name *)
  agent_node_name : string prop option; [@option]
      (** agent_node_name *)
  agent_tier_name : string prop option; [@option]
      (** agent_tier_name *)
  agent_unique_host_id : string prop option; [@option]
      (** agent_unique_host_id *)
  controller_host_name : string prop;  (** controller_host_name *)
  controller_port : float prop option; [@option]
      (** controller_port *)
  controller_ssl_enabled : bool prop option; [@option]
      (** controller_ssl_enabled *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_dynamics_application_performance_monitoring *)

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
