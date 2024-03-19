(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_share_dataset_kusto_cluster = {
  id : string prop option; [@option]  (** id *)
  kusto_cluster_id : string prop;  (** kusto_cluster_id *)
  name : string prop;  (** name *)
  share_id : string prop;  (** share_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_cluster *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_share_dataset_kusto_cluster ?id ?timeouts
    ~kusto_cluster_id ~name ~share_id () :
    azurerm_data_share_dataset_kusto_cluster =
  { id; kusto_cluster_id; name; share_id; timeouts }

type t = {
  display_name : string prop;
  id : string prop;
  kusto_cluster_id : string prop;
  kusto_cluster_location : string prop;
  name : string prop;
  share_id : string prop;
}

let register ?tf_module ?id ?timeouts ~kusto_cluster_id ~name
    ~share_id __resource_id =
  let __resource_type = "azurerm_data_share_dataset_kusto_cluster" in
  let __resource =
    azurerm_data_share_dataset_kusto_cluster ?id ?timeouts
      ~kusto_cluster_id ~name ~share_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_kusto_cluster __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       kusto_cluster_id =
         Prop.computed __resource_type __resource_id
           "kusto_cluster_id";
       kusto_cluster_location =
         Prop.computed __resource_type __resource_id
           "kusto_cluster_location";
       name = Prop.computed __resource_type __resource_id "name";
       share_id =
         Prop.computed __resource_type __resource_id "share_id";
     }
      : t)
  in
  __resource_attributes
