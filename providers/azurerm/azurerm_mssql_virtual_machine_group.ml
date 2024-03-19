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

type wsfc_domain_profile = {
  cluster_bootstrap_account_name : string prop option; [@option]
      (** cluster_bootstrap_account_name *)
  cluster_operator_account_name : string prop option; [@option]
      (** cluster_operator_account_name *)
  cluster_subnet_type : string prop;  (** cluster_subnet_type *)
  fqdn : string prop;  (** fqdn *)
  organizational_unit_path : string prop option; [@option]
      (** organizational_unit_path *)
  sql_service_account_name : string prop option; [@option]
      (** sql_service_account_name *)
  storage_account_primary_key : string prop option; [@option]
      (** storage_account_primary_key *)
  storage_account_url : string prop option; [@option]
      (** storage_account_url *)
}
[@@deriving yojson_of]
(** wsfc_domain_profile *)

type azurerm_mssql_virtual_machine_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sql_image_offer : string prop;  (** sql_image_offer *)
  sql_image_sku : string prop;  (** sql_image_sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
  wsfc_domain_profile : wsfc_domain_profile list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let wsfc_domain_profile ?cluster_bootstrap_account_name
    ?cluster_operator_account_name ?organizational_unit_path
    ?sql_service_account_name ?storage_account_primary_key
    ?storage_account_url ~cluster_subnet_type ~fqdn () :
    wsfc_domain_profile =
  {
    cluster_bootstrap_account_name;
    cluster_operator_account_name;
    cluster_subnet_type;
    fqdn;
    organizational_unit_path;
    sql_service_account_name;
    storage_account_primary_key;
    storage_account_url;
  }

let azurerm_mssql_virtual_machine_group ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sql_image_offer ~sql_image_sku
    ~wsfc_domain_profile () : azurerm_mssql_virtual_machine_group =
  {
    id;
    location;
    name;
    resource_group_name;
    sql_image_offer;
    sql_image_sku;
    tags;
    timeouts;
    wsfc_domain_profile;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sql_image_offer : string prop;
  sql_image_sku : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sql_image_offer ~sql_image_sku
    ~wsfc_domain_profile __resource_id =
  let __resource_type = "azurerm_mssql_virtual_machine_group" in
  let __resource =
    azurerm_mssql_virtual_machine_group ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~sql_image_offer ~sql_image_sku
      ~wsfc_domain_profile ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_virtual_machine_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sql_image_offer =
         Prop.computed __resource_type __resource_id
           "sql_image_offer";
       sql_image_sku =
         Prop.computed __resource_type __resource_id "sql_image_sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
