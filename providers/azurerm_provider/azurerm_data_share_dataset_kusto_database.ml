(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_database__timeouts *)

type azurerm_data_share_dataset_kusto_database = {
  id : string prop option; [@option]  (** id *)
  kusto_database_id : string prop;  (** kusto_database_id *)
  name : string prop;  (** name *)
  share_id : string prop;  (** share_id *)
  timeouts :
    azurerm_data_share_dataset_kusto_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_database *)

type t = {
  display_name : string prop;
  id : string prop;
  kusto_cluster_location : string prop;
  kusto_database_id : string prop;
  name : string prop;
  share_id : string prop;
}

let azurerm_data_share_dataset_kusto_database ?id ?timeouts
    ~kusto_database_id ~name ~share_id __resource_id =
  let __resource_type =
    "azurerm_data_share_dataset_kusto_database"
  in
  let __resource =
    ({ id; kusto_database_id; name; share_id; timeouts }
      : azurerm_data_share_dataset_kusto_database)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_kusto_database __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       kusto_cluster_location =
         Prop.computed __resource_type __resource_id
           "kusto_cluster_location";
       kusto_database_id =
         Prop.computed __resource_type __resource_id
           "kusto_database_id";
       name = Prop.computed __resource_type __resource_id "name";
       share_id =
         Prop.computed __resource_type __resource_id "share_id";
     }
      : t)
  in
  __resource_attributes
