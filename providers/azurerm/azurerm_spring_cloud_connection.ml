(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type azurerm_spring_cloud_connection = {
  client_type : string prop option; [@option]  (** client_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_id : string prop;  (** spring_cloud_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  vnet_solution : string prop option; [@option]  (** vnet_solution *)
  authentication : authentication list;
  secret_store : secret_store list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_connection *)

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

let azurerm_spring_cloud_connection ?client_type ?id ?vnet_solution
    ?timeouts ~name ~spring_cloud_id ~target_resource_id
    ~authentication ~secret_store () :
    azurerm_spring_cloud_connection =
  {
    client_type;
    id;
    name;
    spring_cloud_id;
    target_resource_id;
    vnet_solution;
    authentication;
    secret_store;
    timeouts;
  }

type t = {
  client_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_id : string prop;
  target_resource_id : string prop;
  vnet_solution : string prop;
}

let register ?tf_module ?client_type ?id ?vnet_solution ?timeouts
    ~name ~spring_cloud_id ~target_resource_id ~authentication
    ~secret_store __resource_id =
  let __resource_type = "azurerm_spring_cloud_connection" in
  let __resource =
    azurerm_spring_cloud_connection ?client_type ?id ?vnet_solution
      ?timeouts ~name ~spring_cloud_id ~target_resource_id
      ~authentication ~secret_store ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_connection __resource);
  let __resource_attributes =
    ({
       client_type =
         Prop.computed __resource_type __resource_id "client_type";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_id";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
       vnet_solution =
         Prop.computed __resource_type __resource_id "vnet_solution";
     }
      : t)
  in
  __resource_attributes
