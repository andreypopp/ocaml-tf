(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_recovery_services_vault__encryption = {
  infrastructure_encryption_enabled : bool prop;
      (** infrastructure_encryption_enabled *)
  key_id : string prop;  (** key_id *)
  use_system_assigned_identity : bool prop option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault__encryption *)

type azurerm_recovery_services_vault__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault__identity *)

type azurerm_recovery_services_vault__monitoring = {
  alerts_for_all_job_failures_enabled : bool prop option; [@option]
      (** alerts_for_all_job_failures_enabled *)
  alerts_for_critical_operation_failures_enabled : bool prop option;
      [@option]
      (** alerts_for_critical_operation_failures_enabled *)
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault__monitoring *)

type azurerm_recovery_services_vault__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault__timeouts *)

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
  encryption : azurerm_recovery_services_vault__encryption list;
  identity : azurerm_recovery_services_vault__identity list;
  monitoring : azurerm_recovery_services_vault__monitoring list;
  timeouts : azurerm_recovery_services_vault__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault *)

let azurerm_recovery_services_vault
    ?classic_vmware_replication_enabled ?cross_region_restore_enabled
    ?id ?immutability ?public_network_access_enabled
    ?soft_delete_enabled ?storage_mode_type ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku ~encryption ~identity ~monitoring
    __resource_id =
  let __resource_type = "azurerm_recovery_services_vault" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_recovery_services_vault __resource);
  ()
