(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_function_app_connection__authentication = {
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
(** azurerm_function_app_connection__authentication *)

type azurerm_function_app_connection__secret_store = {
  key_vault_id : string prop;  (** key_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_function_app_connection__secret_store *)

type azurerm_function_app_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_function_app_connection__timeouts *)

type azurerm_function_app_connection = {
  client_type : string prop option; [@option]  (** client_type *)
  function_app_id : string prop;  (** function_app_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  target_resource_id : string prop;  (** target_resource_id *)
  vnet_solution : string prop option; [@option]  (** vnet_solution *)
  authentication :
    azurerm_function_app_connection__authentication list;
  secret_store : azurerm_function_app_connection__secret_store list;
  timeouts : azurerm_function_app_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_connection *)

type t = {
  client_type : string prop;
  function_app_id : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
  vnet_solution : string prop;
}

let azurerm_function_app_connection ?client_type ?id ?vnet_solution
    ?timeouts ~function_app_id ~name ~target_resource_id
    ~authentication ~secret_store __resource_id =
  let __resource_type = "azurerm_function_app_connection" in
  let __resource =
    ({
       client_type;
       function_app_id;
       id;
       name;
       target_resource_id;
       vnet_solution;
       authentication;
       secret_store;
       timeouts;
     }
      : azurerm_function_app_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_function_app_connection __resource);
  let __resource_attributes =
    ({
       client_type =
         Prop.computed __resource_type __resource_id "client_type";
       function_app_id =
         Prop.computed __resource_type __resource_id
           "function_app_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
       vnet_solution =
         Prop.computed __resource_type __resource_id "vnet_solution";
     }
      : t)
  in
  __resource_attributes
