(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_connection__authentication = {
  certificate : string option; [@option]  (** certificate *)
  client_id : string option; [@option]  (** client_id *)
  name : string option; [@option]  (** name *)
  principal_id : string option; [@option]  (** principal_id *)
  secret : string option; [@option]  (** secret *)
  subscription_id : string option; [@option]  (** subscription_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_connection__authentication *)

type azurerm_spring_cloud_connection__secret_store = {
  key_vault_id : string;  (** key_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_connection__secret_store *)

type azurerm_spring_cloud_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_connection__timeouts *)

type azurerm_spring_cloud_connection = {
  client_type : string option; [@option]  (** client_type *)
  name : string;  (** name *)
  spring_cloud_id : string;  (** spring_cloud_id *)
  target_resource_id : string;  (** target_resource_id *)
  vnet_solution : string option; [@option]  (** vnet_solution *)
  authentication :
    azurerm_spring_cloud_connection__authentication list;
  secret_store : azurerm_spring_cloud_connection__secret_store list;
  timeouts : azurerm_spring_cloud_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_connection *)

let azurerm_spring_cloud_connection ?client_type ?vnet_solution
    ?timeouts ~name ~spring_cloud_id ~target_resource_id
    ~authentication ~secret_store __resource_id =
  let __resource_type = "azurerm_spring_cloud_connection" in
  let __resource =
    {
      client_type;
      name;
      spring_cloud_id;
      target_resource_id;
      vnet_solution;
      authentication;
      secret_store;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_connection __resource);
  ()
