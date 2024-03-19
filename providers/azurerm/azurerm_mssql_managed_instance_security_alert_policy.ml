(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_managed_instance_security_alert_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins_enabled : bool prop option; [@option]
      (** email_account_admins_enabled *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  managed_instance_name : string prop;  (** managed_instance_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_security_alert_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_managed_instance_security_alert_policy
    ?disabled_alerts ?email_account_admins_enabled ?email_addresses
    ?enabled ?id ?retention_days ?storage_account_access_key
    ?storage_endpoint ?timeouts ~managed_instance_name
    ~resource_group_name () :
    azurerm_mssql_managed_instance_security_alert_policy =
  {
    disabled_alerts;
    email_account_admins_enabled;
    email_addresses;
    enabled;
    id;
    managed_instance_name;
    resource_group_name;
    retention_days;
    storage_account_access_key;
    storage_endpoint;
    timeouts;
  }

type t = {
  disabled_alerts : string list prop;
  email_account_admins_enabled : bool prop;
  email_addresses : string list prop;
  enabled : bool prop;
  id : string prop;
  managed_instance_name : string prop;
  resource_group_name : string prop;
  retention_days : float prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
}

let register ?tf_module ?disabled_alerts
    ?email_account_admins_enabled ?email_addresses ?enabled ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~managed_instance_name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_mssql_managed_instance_security_alert_policy"
  in
  let __resource =
    azurerm_mssql_managed_instance_security_alert_policy
      ?disabled_alerts ?email_account_admins_enabled ?email_addresses
      ?enabled ?id ?retention_days ?storage_account_access_key
      ?storage_endpoint ?timeouts ~managed_instance_name
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_instance_security_alert_policy
       __resource);
  let __resource_attributes =
    ({
       disabled_alerts =
         Prop.computed __resource_type __resource_id
           "disabled_alerts";
       email_account_admins_enabled =
         Prop.computed __resource_type __resource_id
           "email_account_admins_enabled";
       email_addresses =
         Prop.computed __resource_type __resource_id
           "email_addresses";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       managed_instance_name =
         Prop.computed __resource_type __resource_id
           "managed_instance_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       retention_days =
         Prop.computed __resource_type __resource_id "retention_days";
       storage_account_access_key =
         Prop.computed __resource_type __resource_id
           "storage_account_access_key";
       storage_endpoint =
         Prop.computed __resource_type __resource_id
           "storage_endpoint";
     }
      : t)
  in
  __resource_attributes
