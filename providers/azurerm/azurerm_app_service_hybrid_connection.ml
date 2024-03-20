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

type azurerm_app_service_hybrid_connection = {
  app_service_name : string prop;  (** app_service_name *)
  hostname : string prop;  (** hostname *)
  id : string prop option; [@option]  (** id *)
  port : float prop;  (** port *)
  relay_id : string prop;  (** relay_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  send_key_name : string prop option; [@option]  (** send_key_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_hybrid_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_hybrid_connection ?id ?send_key_name
    ?timeouts ~app_service_name ~hostname ~port ~relay_id
    ~resource_group_name () : azurerm_app_service_hybrid_connection =
  {
    app_service_name;
    hostname;
    id;
    port;
    relay_id;
    resource_group_name;
    send_key_name;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  hostname : string prop;
  id : string prop;
  namespace_name : string prop;
  port : float prop;
  relay_id : string prop;
  relay_name : string prop;
  resource_group_name : string prop;
  send_key_name : string prop;
  send_key_value : string prop;
  service_bus_namespace : string prop;
  service_bus_suffix : string prop;
}

let make ?id ?send_key_name ?timeouts ~app_service_name ~hostname
    ~port ~relay_id ~resource_group_name __id =
  let __type = "azurerm_app_service_hybrid_connection" in
  let __attrs =
    ({
       app_service_name =
         Prop.computed __type __id "app_service_name";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       namespace_name = Prop.computed __type __id "namespace_name";
       port = Prop.computed __type __id "port";
       relay_id = Prop.computed __type __id "relay_id";
       relay_name = Prop.computed __type __id "relay_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       send_key_name = Prop.computed __type __id "send_key_name";
       send_key_value = Prop.computed __type __id "send_key_value";
       service_bus_namespace =
         Prop.computed __type __id "service_bus_namespace";
       service_bus_suffix =
         Prop.computed __type __id "service_bus_suffix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_hybrid_connection
        (azurerm_app_service_hybrid_connection ?id ?send_key_name
           ?timeouts ~app_service_name ~hostname ~port ~relay_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_key_name ?timeouts
    ~app_service_name ~hostname ~port ~relay_id ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_key_name ?timeouts ~app_service_name ~hostname
      ~port ~relay_id ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
