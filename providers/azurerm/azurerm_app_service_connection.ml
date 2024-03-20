(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication = {
  certificate : string prop option; [@option]  (** certificate *)
  client_id : string prop option; [@option]  (** client_id *)
  name : string prop option; [@option]  (** name *)
  principal_id : string prop option; [@option]  (** principal_id *)
  secret : string prop option; [@option]  (** secret *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** authentication *)

type secret_store = {
  key_vault_id : string prop;  (** key_vault_id *)
}
[@@deriving yojson_of]
(** secret_store *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_connection = {
  app_service_id : string prop;  (** app_service_id *)
  client_type : string prop option; [@option]  (** client_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  target_resource_id : string prop;  (** target_resource_id *)
  vnet_solution : string prop option; [@option]  (** vnet_solution *)
  authentication : authentication list;
  secret_store : secret_store list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_connection *)

let authentication ?certificate ?client_id ?name ?principal_id
    ?secret ?subscription_id ~type_ () : authentication =
  {
    certificate;
    client_id;
    name;
    principal_id;
    secret;
    subscription_id;
    type_;
  }

let secret_store ~key_vault_id () : secret_store = { key_vault_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_connection ?client_type ?id ?vnet_solution
    ?timeouts ~app_service_id ~name ~target_resource_id
    ~authentication ~secret_store () : azurerm_app_service_connection
    =
  {
    app_service_id;
    client_type;
    id;
    name;
    target_resource_id;
    vnet_solution;
    authentication;
    secret_store;
    timeouts;
  }

type t = {
  app_service_id : string prop;
  client_type : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
  vnet_solution : string prop;
}

let make ?client_type ?id ?vnet_solution ?timeouts ~app_service_id
    ~name ~target_resource_id ~authentication ~secret_store __id =
  let __type = "azurerm_app_service_connection" in
  let __attrs =
    ({
       app_service_id = Prop.computed __type __id "app_service_id";
       client_type = Prop.computed __type __id "client_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
       vnet_solution = Prop.computed __type __id "vnet_solution";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_connection
        (azurerm_app_service_connection ?client_type ?id
           ?vnet_solution ?timeouts ~app_service_id ~name
           ~target_resource_id ~authentication ~secret_store ());
    attrs = __attrs;
  }

let register ?tf_module ?client_type ?id ?vnet_solution ?timeouts
    ~app_service_id ~name ~target_resource_id ~authentication
    ~secret_store __id =
  let (r : _ Tf_core.resource) =
    make ?client_type ?id ?vnet_solution ?timeouts ~app_service_id
      ~name ~target_resource_id ~authentication ~secret_store __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
