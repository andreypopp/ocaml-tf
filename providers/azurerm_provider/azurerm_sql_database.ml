(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_database__import = {
  administrator_login : string prop;  (** administrator_login *)
  administrator_login_password : string prop;
      (** administrator_login_password *)
  authentication_type : string prop;  (** authentication_type *)
  operation_mode : string prop option; [@option]
      (** operation_mode *)
  storage_key : string prop;  (** storage_key *)
  storage_key_type : string prop;  (** storage_key_type *)
  storage_uri : string prop;  (** storage_uri *)
}
[@@deriving yojson_of]
(** azurerm_sql_database__import *)

type azurerm_sql_database__threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins : string prop option; [@option]
      (** email_account_admins *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  state : string prop option; [@option]  (** state *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_sql_database__threat_detection_policy *)

type azurerm_sql_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_database__timeouts *)

type azurerm_sql_database = {
  collation : string prop option; [@option]  (** collation *)
  create_mode : string prop option; [@option]  (** create_mode *)
  edition : string prop option; [@option]  (** edition *)
  elastic_pool_name : string prop option; [@option]
      (** elastic_pool_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  max_size_bytes : string prop option; [@option]
      (** max_size_bytes *)
  max_size_gb : string prop option; [@option]  (** max_size_gb *)
  name : string prop;  (** name *)
  read_scale : bool prop option; [@option]  (** read_scale *)
  requested_service_objective_id : string prop option; [@option]
      (** requested_service_objective_id *)
  requested_service_objective_name : string prop option; [@option]
      (** requested_service_objective_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  restore_point_in_time : string prop option; [@option]
      (** restore_point_in_time *)
  server_name : string prop;  (** server_name *)
  source_database_deletion_date : string prop option; [@option]
      (** source_database_deletion_date *)
  source_database_id : string prop option; [@option]
      (** source_database_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  import : azurerm_sql_database__import list;
  threat_detection_policy :
    azurerm_sql_database__threat_detection_policy list;
  timeouts : azurerm_sql_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_database *)

type t = {
  collation : string prop;
  create_mode : string prop;
  creation_date : string prop;
  default_secondary_location : string prop;
  edition : string prop;
  elastic_pool_name : string prop;
  encryption : string prop;
  id : string prop;
  location : string prop;
  max_size_bytes : string prop;
  max_size_gb : string prop;
  name : string prop;
  read_scale : bool prop;
  requested_service_objective_id : string prop;
  requested_service_objective_name : string prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  server_name : string prop;
  source_database_deletion_date : string prop;
  source_database_id : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let azurerm_sql_database ?collation ?create_mode ?edition
    ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_sql_database" in
  let __resource =
    ({
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
      : azurerm_sql_database)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_database __resource);
  let __resource_attributes =
    ({
       collation =
         Prop.computed __resource_type __resource_id "collation";
       create_mode =
         Prop.computed __resource_type __resource_id "create_mode";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       default_secondary_location =
         Prop.computed __resource_type __resource_id
           "default_secondary_location";
       edition =
         Prop.computed __resource_type __resource_id "edition";
       elastic_pool_name =
         Prop.computed __resource_type __resource_id
           "elastic_pool_name";
       encryption =
         Prop.computed __resource_type __resource_id "encryption";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       max_size_bytes =
         Prop.computed __resource_type __resource_id "max_size_bytes";
       max_size_gb =
         Prop.computed __resource_type __resource_id "max_size_gb";
       name = Prop.computed __resource_type __resource_id "name";
       read_scale =
         Prop.computed __resource_type __resource_id "read_scale";
       requested_service_objective_id =
         Prop.computed __resource_type __resource_id
           "requested_service_objective_id";
       requested_service_objective_name =
         Prop.computed __resource_type __resource_id
           "requested_service_objective_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       restore_point_in_time =
         Prop.computed __resource_type __resource_id
           "restore_point_in_time";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       source_database_deletion_date =
         Prop.computed __resource_type __resource_id
           "source_database_deletion_date";
       source_database_id =
         Prop.computed __resource_type __resource_id
           "source_database_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone_redundant =
         Prop.computed __resource_type __resource_id "zone_redundant";
     }
      : t)
  in
  __resource_attributes
