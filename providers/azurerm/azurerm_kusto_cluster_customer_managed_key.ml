(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_cluster_customer_managed_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_customer_managed_key__timeouts *)

type azurerm_kusto_cluster_customer_managed_key = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  key_name : string prop;  (** key_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_version : string prop option; [@option]  (** key_version *)
  user_identity : string prop option; [@option]  (** user_identity *)
  timeouts :
    azurerm_kusto_cluster_customer_managed_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_customer_managed_key *)

type t = {
  cluster_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_version : string prop;
  user_identity : string prop;
}

let azurerm_kusto_cluster_customer_managed_key ?id ?key_version
    ?user_identity ?timeouts ~cluster_id ~key_name ~key_vault_id
    __resource_id =
  let __resource_type =
    "azurerm_kusto_cluster_customer_managed_key"
  in
  let __resource =
    ({
       cluster_id;
       id;
       key_name;
       key_vault_id;
       key_version;
       user_identity;
       timeouts;
     }
      : azurerm_kusto_cluster_customer_managed_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cluster_customer_managed_key __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_name =
         Prop.computed __resource_type __resource_id "key_name";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       key_version =
         Prop.computed __resource_type __resource_id "key_version";
       user_identity =
         Prop.computed __resource_type __resource_id "user_identity";
     }
      : t)
  in
  __resource_attributes
