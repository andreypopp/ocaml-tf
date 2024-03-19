(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type long_term_retention_policy = {
  immutable_backups_enabled : bool prop option; [@option]
      (** immutable_backups_enabled *)
  monthly_retention : string prop option; [@option]
      (** monthly_retention *)
  week_of_year : float prop option; [@option]  (** week_of_year *)
  weekly_retention : string prop option; [@option]
      (** weekly_retention *)
  yearly_retention : string prop option; [@option]
      (** yearly_retention *)
}
[@@deriving yojson_of]
(** long_term_retention_policy *)

type point_in_time_restore = {
  restore_point_in_time : string prop;  (** restore_point_in_time *)
  source_database_id : string prop;  (** source_database_id *)
}
[@@deriving yojson_of]
(** point_in_time_restore *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_managed_database = {
  id : string prop option; [@option]  (** id *)
  managed_instance_id : string prop;  (** managed_instance_id *)
  name : string prop;  (** name *)
  short_term_retention_days : float prop option; [@option]
      (** short_term_retention_days *)
  long_term_retention_policy : long_term_retention_policy list;
  point_in_time_restore : point_in_time_restore list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_database *)

let long_term_retention_policy ?immutable_backups_enabled
    ?monthly_retention ?week_of_year ?weekly_retention
    ?yearly_retention () : long_term_retention_policy =
  {
    immutable_backups_enabled;
    monthly_retention;
    week_of_year;
    weekly_retention;
    yearly_retention;
  }

let point_in_time_restore ~restore_point_in_time ~source_database_id
    () : point_in_time_restore =
  { restore_point_in_time; source_database_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_managed_database ?id ?short_term_retention_days
    ?timeouts ~managed_instance_id ~name ~long_term_retention_policy
    ~point_in_time_restore () : azurerm_mssql_managed_database =
  {
    id;
    managed_instance_id;
    name;
    short_term_retention_days;
    long_term_retention_policy;
    point_in_time_restore;
    timeouts;
  }

type t = {
  id : string prop;
  managed_instance_id : string prop;
  name : string prop;
  short_term_retention_days : float prop;
}

let register ?tf_module ?id ?short_term_retention_days ?timeouts
    ~managed_instance_id ~name ~long_term_retention_policy
    ~point_in_time_restore __resource_id =
  let __resource_type = "azurerm_mssql_managed_database" in
  let __resource =
    azurerm_mssql_managed_database ?id ?short_term_retention_days
      ?timeouts ~managed_instance_id ~name
      ~long_term_retention_policy ~point_in_time_restore ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_database __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       managed_instance_id =
         Prop.computed __resource_type __resource_id
           "managed_instance_id";
       name = Prop.computed __resource_type __resource_id "name";
       short_term_retention_days =
         Prop.computed __resource_type __resource_id
           "short_term_retention_days";
     }
      : t)
  in
  __resource_attributes
