(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_virtual_machine_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_group__timeouts *)

type azurerm_mssql_virtual_machine_group__wsfc_domain_profile = {
  cluster_bootstrap_account_name : string option; [@option]
      (** cluster_bootstrap_account_name *)
  cluster_operator_account_name : string option; [@option]
      (** cluster_operator_account_name *)
  cluster_subnet_type : string;  (** cluster_subnet_type *)
  fqdn : string;  (** fqdn *)
  organizational_unit_path : string option; [@option]
      (** organizational_unit_path *)
  sql_service_account_name : string option; [@option]
      (** sql_service_account_name *)
  storage_account_primary_key : string option; [@option]
      (** storage_account_primary_key *)
  storage_account_url : string option; [@option]
      (** storage_account_url *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_group__wsfc_domain_profile *)

type azurerm_mssql_virtual_machine_group = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sql_image_offer : string;  (** sql_image_offer *)
  sql_image_sku : string;  (** sql_image_sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_mssql_virtual_machine_group__timeouts option;
  wsfc_domain_profile :
    azurerm_mssql_virtual_machine_group__wsfc_domain_profile list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_group *)

let azurerm_mssql_virtual_machine_group ?tags ?timeouts ~location
    ~name ~resource_group_name ~sql_image_offer ~sql_image_sku
    ~wsfc_domain_profile __resource_id =
  let __resource_type = "azurerm_mssql_virtual_machine_group" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      sql_image_offer;
      sql_image_sku;
      tags;
      timeouts;
      wsfc_domain_profile;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_virtual_machine_group __resource);
  ()
