(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  infrastructure_encryption_enabled : bool prop;
      (** infrastructure_encryption_enabled *)
  key_id : string prop;  (** key_id *)
  use_system_assigned_identity : bool prop option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** encryption *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type monitoring = {
  alerts_for_all_job_failures_enabled : bool prop option; [@option]
      (** alerts_for_all_job_failures_enabled *)
  alerts_for_critical_operation_failures_enabled : bool prop option;
      [@option]
      (** alerts_for_critical_operation_failures_enabled *)
}
[@@deriving yojson_of]
(** monitoring *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_recovery_services_vault = {
  classic_vmware_replication_enabled : bool prop option; [@option]
      (** classic_vmware_replication_enabled *)
  cross_region_restore_enabled : bool prop option; [@option]
      (** cross_region_restore_enabled *)
  id : string prop option; [@option]  (** id *)
  immutability : string prop option; [@option]  (** immutability *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  soft_delete_enabled : bool prop option; [@option]
      (** soft_delete_enabled *)
  storage_mode_type : string prop option; [@option]
      (** storage_mode_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption : encryption list;
  identity : identity list;
  monitoring : monitoring list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault *)

let encryption ?use_system_assigned_identity
    ?user_assigned_identity_id ~infrastructure_encryption_enabled
    ~key_id () : encryption =
  {
    infrastructure_encryption_enabled;
    key_id;
    use_system_assigned_identity;
    user_assigned_identity_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let monitoring ?alerts_for_all_job_failures_enabled
    ?alerts_for_critical_operation_failures_enabled () : monitoring =
  {
    alerts_for_all_job_failures_enabled;
    alerts_for_critical_operation_failures_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_recovery_services_vault
    ?classic_vmware_replication_enabled ?cross_region_restore_enabled
    ?id ?immutability ?public_network_access_enabled
    ?soft_delete_enabled ?storage_mode_type ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku ~encryption ~identity ~monitoring
    () : azurerm_recovery_services_vault =
  {
    classic_vmware_replication_enabled;
    cross_region_restore_enabled;
    id;
    immutability;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    soft_delete_enabled;
    storage_mode_type;
    tags;
    encryption;
    identity;
    monitoring;
    timeouts;
  }

type t = {
  classic_vmware_replication_enabled : bool prop;
  cross_region_restore_enabled : bool prop;
  id : string prop;
  immutability : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  soft_delete_enabled : bool prop;
  storage_mode_type : string prop;
  tags : (string * string) list prop;
}

let make ?classic_vmware_replication_enabled
    ?cross_region_restore_enabled ?id ?immutability
    ?public_network_access_enabled ?soft_delete_enabled
    ?storage_mode_type ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~encryption ~identity ~monitoring __id
    =
  let __type = "azurerm_recovery_services_vault" in
  let __attrs =
    ({
       classic_vmware_replication_enabled =
         Prop.computed __type __id
           "classic_vmware_replication_enabled";
       cross_region_restore_enabled =
         Prop.computed __type __id "cross_region_restore_enabled";
       id = Prop.computed __type __id "id";
       immutability = Prop.computed __type __id "immutability";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       soft_delete_enabled =
         Prop.computed __type __id "soft_delete_enabled";
       storage_mode_type =
         Prop.computed __type __id "storage_mode_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_recovery_services_vault
        (azurerm_recovery_services_vault
           ?classic_vmware_replication_enabled
           ?cross_region_restore_enabled ?id ?immutability
           ?public_network_access_enabled ?soft_delete_enabled
           ?storage_mode_type ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku ~encryption ~identity
           ~monitoring ());
    attrs = __attrs;
  }

let register ?tf_module ?classic_vmware_replication_enabled
    ?cross_region_restore_enabled ?id ?immutability
    ?public_network_access_enabled ?soft_delete_enabled
    ?storage_mode_type ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~encryption ~identity ~monitoring __id
    =
  let (r : _ Tf_core.resource) =
    make ?classic_vmware_replication_enabled
      ?cross_region_restore_enabled ?id ?immutability
      ?public_network_access_enabled ?soft_delete_enabled
      ?storage_mode_type ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku ~encryption ~identity ~monitoring
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
