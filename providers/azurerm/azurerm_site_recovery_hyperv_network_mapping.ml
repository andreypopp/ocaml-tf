(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_hyperv_network_mapping = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  source_network_name : string prop;  (** source_network_name *)
  source_system_center_virtual_machine_manager_name : string prop;
      (** source_system_center_virtual_machine_manager_name *)
  target_network_id : string prop;  (** target_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_network_mapping *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_hyperv_network_mapping ?id ?timeouts ~name
    ~recovery_vault_id ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id () :
    azurerm_site_recovery_hyperv_network_mapping =
  {
    id;
    name;
    recovery_vault_id;
    source_network_name;
    source_system_center_virtual_machine_manager_name;
    target_network_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_network_name : string prop;
  source_system_center_virtual_machine_manager_name : string prop;
  target_network_id : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_id ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id __id =
  let __type = "azurerm_site_recovery_hyperv_network_mapping" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
       source_network_name =
         Prop.computed __type __id "source_network_name";
       source_system_center_virtual_machine_manager_name =
         Prop.computed __type __id
           "source_system_center_virtual_machine_manager_name";
       target_network_id =
         Prop.computed __type __id "target_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_hyperv_network_mapping
        (azurerm_site_recovery_hyperv_network_mapping ?id ?timeouts
           ~name ~recovery_vault_id ~source_network_name
           ~source_system_center_virtual_machine_manager_name
           ~target_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_id
    ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_id ~source_network_name
      ~source_system_center_virtual_machine_manager_name
      ~target_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
