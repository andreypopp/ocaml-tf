(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_notebook_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_notebook_workspace__timeouts *)

type azurerm_cosmosdb_notebook_workspace = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_cosmosdb_notebook_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_notebook_workspace *)

type t = {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_endpoint : string prop;
}

let azurerm_cosmosdb_notebook_workspace ?id ?timeouts ~account_name
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_cosmosdb_notebook_workspace" in
  let __resource =
    ({ account_name; id; name; resource_group_name; timeouts }
      : azurerm_cosmosdb_notebook_workspace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_notebook_workspace __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_endpoint =
         Prop.computed __resource_type __resource_id
           "server_endpoint";
     }
      : t)
  in
  __resource_attributes
