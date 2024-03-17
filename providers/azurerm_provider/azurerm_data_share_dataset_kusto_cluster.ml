(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_cluster__timeouts *)

type azurerm_data_share_dataset_kusto_cluster = {
  id : string prop option; [@option]  (** id *)
  kusto_cluster_id : string prop;  (** kusto_cluster_id *)
  name : string prop;  (** name *)
  share_id : string prop;  (** share_id *)
  timeouts :
    azurerm_data_share_dataset_kusto_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_cluster *)

let azurerm_data_share_dataset_kusto_cluster ?id ?timeouts
    ~kusto_cluster_id ~name ~share_id __resource_id =
  let __resource_type = "azurerm_data_share_dataset_kusto_cluster" in
  let __resource =
    { id; kusto_cluster_id; name; share_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_kusto_cluster __resource);
  ()
