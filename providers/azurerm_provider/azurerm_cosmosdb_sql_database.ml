(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_database__autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_database__autoscale_settings *)

type azurerm_cosmosdb_sql_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_database__timeouts *)

type azurerm_cosmosdb_sql_database = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings :
    azurerm_cosmosdb_sql_database__autoscale_settings list;
  timeouts : azurerm_cosmosdb_sql_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_database *)

let azurerm_cosmosdb_sql_database ?id ?throughput ?timeouts
    ~account_name ~name ~resource_group_name ~autoscale_settings
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_database" in
  let __resource =
    {
      account_name;
      id;
      name;
      resource_group_name;
      throughput;
      autoscale_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_database __resource);
  ()
