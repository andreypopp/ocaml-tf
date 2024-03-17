(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_cluster__timeouts *)

type azurerm_data_share_dataset_kusto_cluster = {
  kusto_cluster_id : string;  (** kusto_cluster_id *)
  name : string;  (** name *)
  share_id : string;  (** share_id *)
  timeouts :
    azurerm_data_share_dataset_kusto_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_cluster *)

let azurerm_data_share_dataset_kusto_cluster ?timeouts
    ~kusto_cluster_id ~name ~share_id __resource_id =
  let __resource_type = "azurerm_data_share_dataset_kusto_cluster" in
  let __resource = { kusto_cluster_id; name; share_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_kusto_cluster __resource);
  ()
