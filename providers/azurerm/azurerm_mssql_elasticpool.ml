(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_elasticpool__per_database_settings = {
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool__per_database_settings *)

type azurerm_mssql_elasticpool__sku = {
  capacity : float prop;  (** capacity *)
  family : string prop option; [@option]  (** family *)
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool__sku *)

type azurerm_mssql_elasticpool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool__timeouts *)

type azurerm_mssql_elasticpool = {
  enclave_type : string prop option; [@option]  (** enclave_type *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  maintenance_configuration_name : string prop option; [@option]
      (** maintenance_configuration_name *)
  max_size_bytes : float prop option; [@option]
      (** max_size_bytes *)
  max_size_gb : float prop option; [@option]  (** max_size_gb *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  per_database_settings :
    azurerm_mssql_elasticpool__per_database_settings list;
  sku : azurerm_mssql_elasticpool__sku list;
  timeouts : azurerm_mssql_elasticpool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool *)

type t = {
  enclave_type : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  maintenance_configuration_name : string prop;
  max_size_bytes : float prop;
  max_size_gb : float prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let azurerm_mssql_elasticpool ?enclave_type ?id ?license_type
    ?maintenance_configuration_name ?max_size_bytes ?max_size_gb
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~server_name ~per_database_settings ~sku
    __resource_id =
  let __resource_type = "azurerm_mssql_elasticpool" in
  let __resource =
    ({
       enclave_type;
       id;
       license_type;
       location;
       maintenance_configuration_name;
       max_size_bytes;
       max_size_gb;
       name;
       resource_group_name;
       server_name;
       tags;
       zone_redundant;
       per_database_settings;
       sku;
       timeouts;
     }
      : azurerm_mssql_elasticpool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_elasticpool __resource);
  let __resource_attributes =
    ({
       enclave_type =
         Prop.computed __resource_type __resource_id "enclave_type";
       id = Prop.computed __resource_type __resource_id "id";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       location =
         Prop.computed __resource_type __resource_id "location";
       maintenance_configuration_name =
         Prop.computed __resource_type __resource_id
           "maintenance_configuration_name";
       max_size_bytes =
         Prop.computed __resource_type __resource_id "max_size_bytes";
       max_size_gb =
         Prop.computed __resource_type __resource_id "max_size_gb";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone_redundant =
         Prop.computed __resource_type __resource_id "zone_redundant";
     }
      : t)
  in
  __resource_attributes
