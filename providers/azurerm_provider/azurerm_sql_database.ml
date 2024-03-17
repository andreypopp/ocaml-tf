(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_database__import = {
  administrator_login : string;  (** administrator_login *)
  administrator_login_password : string;
      (** administrator_login_password *)
  authentication_type : string;  (** authentication_type *)
  operation_mode : string option; [@option]  (** operation_mode *)
  storage_key : string;  (** storage_key *)
  storage_key_type : string;  (** storage_key_type *)
  storage_uri : string;  (** storage_uri *)
}
[@@deriving yojson_of]
(** azurerm_sql_database__import *)

type azurerm_sql_database__threat_detection_policy = {
  disabled_alerts : string list option; [@option]
      (** disabled_alerts *)
  email_account_admins : string option; [@option]
      (** email_account_admins *)
  email_addresses : string list option; [@option]
      (** email_addresses *)
  retention_days : float option; [@option]  (** retention_days *)
  state : string option; [@option]  (** state *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string option; [@option]  (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_sql_database__threat_detection_policy *)

type azurerm_sql_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_database__timeouts *)

type azurerm_sql_database = {
  collation : string option; [@option]  (** collation *)
  create_mode : string option; [@option]  (** create_mode *)
  edition : string option; [@option]  (** edition *)
  elastic_pool_name : string option; [@option]
      (** elastic_pool_name *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  max_size_bytes : string option; [@option]  (** max_size_bytes *)
  max_size_gb : string option; [@option]  (** max_size_gb *)
  name : string;  (** name *)
  read_scale : bool option; [@option]  (** read_scale *)
  requested_service_objective_id : string option; [@option]
      (** requested_service_objective_id *)
  requested_service_objective_name : string option; [@option]
      (** requested_service_objective_name *)
  resource_group_name : string;  (** resource_group_name *)
  restore_point_in_time : string option; [@option]
      (** restore_point_in_time *)
  server_name : string;  (** server_name *)
  source_database_deletion_date : string option; [@option]
      (** source_database_deletion_date *)
  source_database_id : string option; [@option]
      (** source_database_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
  import : azurerm_sql_database__import list;
  threat_detection_policy :
    azurerm_sql_database__threat_detection_policy list;
  timeouts : azurerm_sql_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_database *)

let azurerm_sql_database ?collation ?create_mode ?edition
    ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_sql_database" in
  let __resource =
    {
      collation;
      create_mode;
      edition;
      elastic_pool_name;
      id;
      location;
      max_size_bytes;
      max_size_gb;
      name;
      read_scale;
      requested_service_objective_id;
      requested_service_objective_name;
      resource_group_name;
      restore_point_in_time;
      server_name;
      source_database_deletion_date;
      source_database_id;
      tags;
      zone_redundant;
      import;
      threat_detection_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_database __resource);
  ()
