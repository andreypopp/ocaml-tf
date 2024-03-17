(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_managed_database__long_term_retention_policy = {
  immutable_backups_enabled : bool option; [@option]
      (** immutable_backups_enabled *)
  monthly_retention : string option; [@option]
      (** monthly_retention *)
  week_of_year : float option; [@option]  (** week_of_year *)
  weekly_retention : string option; [@option]
      (** weekly_retention *)
  yearly_retention : string option; [@option]  (** yearly_retention *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_database__long_term_retention_policy *)

type azurerm_mssql_managed_database__point_in_time_restore = {
  restore_point_in_time : string;  (** restore_point_in_time *)
  source_database_id : string;  (** source_database_id *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_database__point_in_time_restore *)

type azurerm_mssql_managed_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_database__timeouts *)

type azurerm_mssql_managed_database = {
  id : string option; [@option]  (** id *)
  managed_instance_id : string;  (** managed_instance_id *)
  name : string;  (** name *)
  short_term_retention_days : float option; [@option]
      (** short_term_retention_days *)
  long_term_retention_policy :
    azurerm_mssql_managed_database__long_term_retention_policy list;
  point_in_time_restore :
    azurerm_mssql_managed_database__point_in_time_restore list;
  timeouts : azurerm_mssql_managed_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_database *)

let azurerm_mssql_managed_database ?id ?short_term_retention_days
    ?timeouts ~managed_instance_id ~name ~long_term_retention_policy
    ~point_in_time_restore __resource_id =
  let __resource_type = "azurerm_mssql_managed_database" in
  let __resource =
    {
      id;
      managed_instance_id;
      name;
      short_term_retention_days;
      long_term_retention_policy;
      point_in_time_restore;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_database __resource);
  ()
