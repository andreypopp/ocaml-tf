(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_database_extended_auditing_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database_extended_auditing_policy__timeouts *)

type azurerm_mssql_database_extended_auditing_policy = {
  database_id : string prop;  (** database_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_monitoring_enabled : bool prop option; [@option]
      (** log_monitoring_enabled *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_account_access_key_is_secondary : bool prop option;
      [@option]
      (** storage_account_access_key_is_secondary *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
  timeouts :
    azurerm_mssql_database_extended_auditing_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_database_extended_auditing_policy *)

type t = {
  database_id : string prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_endpoint : string prop;
}

let azurerm_mssql_database_extended_auditing_policy ?enabled ?id
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~database_id __resource_id =
  let __resource_type =
    "azurerm_mssql_database_extended_auditing_policy"
  in
  let __resource =
    ({
       database_id;
       enabled;
       id;
       log_monitoring_enabled;
       retention_in_days;
       storage_account_access_key;
       storage_account_access_key_is_secondary;
       storage_endpoint;
       timeouts;
     }
      : azurerm_mssql_database_extended_auditing_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_database_extended_auditing_policy
       __resource);
  let __resource_attributes =
    ({
       database_id =
         Prop.computed __resource_type __resource_id "database_id";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       log_monitoring_enabled =
         Prop.computed __resource_type __resource_id
           "log_monitoring_enabled";
       retention_in_days =
         Prop.computed __resource_type __resource_id
           "retention_in_days";
       storage_account_access_key =
         Prop.computed __resource_type __resource_id
           "storage_account_access_key";
       storage_account_access_key_is_secondary =
         Prop.computed __resource_type __resource_id
           "storage_account_access_key_is_secondary";
       storage_endpoint =
         Prop.computed __resource_type __resource_id
           "storage_endpoint";
     }
      : t)
  in
  __resource_attributes
