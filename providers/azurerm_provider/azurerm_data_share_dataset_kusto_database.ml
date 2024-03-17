(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_database__timeouts *)

type azurerm_data_share_dataset_kusto_database = {
  id : string option; [@option]  (** id *)
  kusto_database_id : string;  (** kusto_database_id *)
  name : string;  (** name *)
  share_id : string;  (** share_id *)
  timeouts :
    azurerm_data_share_dataset_kusto_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_database *)

let azurerm_data_share_dataset_kusto_database ?id ?timeouts
    ~kusto_database_id ~name ~share_id __resource_id =
  let __resource_type =
    "azurerm_data_share_dataset_kusto_database"
  in
  let __resource =
    { id; kusto_database_id; name; share_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_kusto_database __resource);
  ()
