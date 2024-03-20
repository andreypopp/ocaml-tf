(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type automatic_update = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  automation_account_id : string prop option; [@option]
      (** automation_account_id *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** automatic_update *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_protection_container_mapping = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_fabric_name : string prop;  (** recovery_fabric_name *)
  recovery_replication_policy_id : string prop;
      (** recovery_replication_policy_id *)
  recovery_source_protection_container_name : string prop;
      (** recovery_source_protection_container_name *)
  recovery_target_protection_container_id : string prop;
      (** recovery_target_protection_container_id *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  automatic_update : automatic_update list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping *)

let automatic_update ?authentication_type ?automation_account_id
    ?enabled () : automatic_update =
  { authentication_type; automation_account_id; enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_protection_container_mapping ?id ?timeouts
    ~name ~recovery_fabric_name ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name ~automatic_update () :
    azurerm_site_recovery_protection_container_mapping =
  {
    id;
    name;
    recovery_fabric_name;
    recovery_replication_policy_id;
    recovery_source_protection_container_name;
    recovery_target_protection_container_id;
    recovery_vault_name;
    resource_group_name;
    automatic_update;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_source_protection_container_name : string prop;
  recovery_target_protection_container_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~name ~recovery_fabric_name
    ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name ~automatic_update __id =
  let __type =
    "azurerm_site_recovery_protection_container_mapping"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_fabric_name =
         Prop.computed __type __id "recovery_fabric_name";
       recovery_replication_policy_id =
         Prop.computed __type __id "recovery_replication_policy_id";
       recovery_source_protection_container_name =
         Prop.computed __type __id
           "recovery_source_protection_container_name";
       recovery_target_protection_container_id =
         Prop.computed __type __id
           "recovery_target_protection_container_id";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_protection_container_mapping
        (azurerm_site_recovery_protection_container_mapping ?id
           ?timeouts ~name ~recovery_fabric_name
           ~recovery_replication_policy_id
           ~recovery_source_protection_container_name
           ~recovery_target_protection_container_id
           ~recovery_vault_name ~resource_group_name
           ~automatic_update ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_fabric_name
    ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name ~automatic_update __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_fabric_name
      ~recovery_replication_policy_id
      ~recovery_source_protection_container_name
      ~recovery_target_protection_container_id ~recovery_vault_name
      ~resource_group_name ~automatic_update __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
