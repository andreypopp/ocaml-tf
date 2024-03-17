(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_elasticpool__per_database_settings = {
  max_capacity : float;  (** max_capacity *)
  min_capacity : float;  (** min_capacity *)
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool__per_database_settings *)

type azurerm_mssql_elasticpool__sku = {
  capacity : float;  (** capacity *)
  family : string option; [@option]  (** family *)
  name : string;  (** name *)
  tier : string;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool__sku *)

type azurerm_mssql_elasticpool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool__timeouts *)

type azurerm_mssql_elasticpool = {
  enclave_type : string option; [@option]  (** enclave_type *)
  id : string option; [@option]  (** id *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  maintenance_configuration_name : string option; [@option]
      (** maintenance_configuration_name *)
  max_size_bytes : float option; [@option]  (** max_size_bytes *)
  max_size_gb : float option; [@option]  (** max_size_gb *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
  per_database_settings :
    azurerm_mssql_elasticpool__per_database_settings list;
  sku : azurerm_mssql_elasticpool__sku list;
  timeouts : azurerm_mssql_elasticpool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool *)

let azurerm_mssql_elasticpool ?enclave_type ?id ?license_type
    ?maintenance_configuration_name ?max_size_bytes ?max_size_gb
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~server_name ~per_database_settings ~sku
    __resource_id =
  let __resource_type = "azurerm_mssql_elasticpool" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_elasticpool __resource);
  ()
