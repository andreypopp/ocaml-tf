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

type azurerm_site_recovery_network_mapping = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_network_id : string prop;  (** source_network_id *)
  source_recovery_fabric_name : string prop;
      (** source_recovery_fabric_name *)
  target_network_id : string prop;  (** target_network_id *)
  target_recovery_fabric_name : string prop;
      (** target_recovery_fabric_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_network_mapping *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_network_mapping ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~source_network_id
    ~source_recovery_fabric_name ~target_network_id
    ~target_recovery_fabric_name () :
    azurerm_site_recovery_network_mapping =
  {
    id;
    name;
    recovery_vault_name;
    resource_group_name;
    source_network_id;
    source_recovery_fabric_name;
    target_network_id;
    target_recovery_fabric_name;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_network_id : string prop;
  source_recovery_fabric_name : string prop;
  target_network_id : string prop;
  target_recovery_fabric_name : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~source_network_id
    ~source_recovery_fabric_name ~target_network_id
    ~target_recovery_fabric_name __resource_id =
  let __resource_type = "azurerm_site_recovery_network_mapping" in
  let __resource =
    azurerm_site_recovery_network_mapping ?id ?timeouts ~name
      ~recovery_vault_name ~resource_group_name ~source_network_id
      ~source_recovery_fabric_name ~target_network_id
      ~target_recovery_fabric_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_network_mapping __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source_network_id =
         Prop.computed __resource_type __resource_id
           "source_network_id";
       source_recovery_fabric_name =
         Prop.computed __resource_type __resource_id
           "source_recovery_fabric_name";
       target_network_id =
         Prop.computed __resource_type __resource_id
           "target_network_id";
       target_recovery_fabric_name =
         Prop.computed __resource_type __resource_id
           "target_recovery_fabric_name";
     }
      : t)
  in
  __resource_attributes
