(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_notebook_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_notebook_workspace__timeouts *)

type azurerm_cosmosdb_notebook_workspace = {
  account_name : string;  (** account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_cosmosdb_notebook_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_notebook_workspace *)

let azurerm_cosmosdb_notebook_workspace ?timeouts ~account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_cosmosdb_notebook_workspace" in
  let __resource =
    { account_name; name; resource_group_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_notebook_workspace __resource);
  ()
