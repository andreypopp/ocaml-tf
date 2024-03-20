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

type azurerm_function_app_hybrid_connection = {
  function_app_id : string prop;
      (** The ID of the Function App for this Hybrid Connection. *)
  hostname : string prop;  (** The hostname of the endpoint. *)
  id : string prop option; [@option]  (** id *)
  port : float prop;  (** The port to use for the endpoint *)
  relay_id : string prop;
      (** The ID of the Relay Hybrid Connection to use. *)
  send_key_name : string prop option; [@option]
      (** The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_hybrid_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_hybrid_connection ?id ?send_key_name
    ?timeouts ~function_app_id ~hostname ~port ~relay_id () :
    azurerm_function_app_hybrid_connection =
  {
    function_app_id;
    hostname;
    id;
    port;
    relay_id;
    send_key_name;
    timeouts;
  }

type t = {
  function_app_id : string prop;
  hostname : string prop;
  id : string prop;
  namespace_name : string prop;
  port : float prop;
  relay_id : string prop;
  relay_name : string prop;
  send_key_name : string prop;
  send_key_value : string prop;
  service_bus_namespace : string prop;
  service_bus_suffix : string prop;
}

let make ?id ?send_key_name ?timeouts ~function_app_id ~hostname
    ~port ~relay_id __id =
  let __type = "azurerm_function_app_hybrid_connection" in
  let __attrs =
    ({
       function_app_id = Prop.computed __type __id "function_app_id";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       namespace_name = Prop.computed __type __id "namespace_name";
       port = Prop.computed __type __id "port";
       relay_id = Prop.computed __type __id "relay_id";
       relay_name = Prop.computed __type __id "relay_name";
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
      yojson_of_azurerm_function_app_hybrid_connection
        (azurerm_function_app_hybrid_connection ?id ?send_key_name
           ?timeouts ~function_app_id ~hostname ~port ~relay_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_key_name ?timeouts ~function_app_id
    ~hostname ~port ~relay_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_key_name ?timeouts ~function_app_id ~hostname
      ~port ~relay_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
