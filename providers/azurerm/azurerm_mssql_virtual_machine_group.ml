(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~sql_image_offer ~sql_image_sku ~wsfc_domain_profile __id =
  let __type = "azurerm_mssql_virtual_machine_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sql_image_offer = Prop.computed __type __id "sql_image_offer";
       sql_image_sku = Prop.computed __type __id "sql_image_sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_virtual_machine_group
        (azurerm_mssql_virtual_machine_group ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~sql_image_offer
           ~sql_image_sku ~wsfc_domain_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sql_image_offer ~sql_image_sku
    ~wsfc_domain_profile __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~sql_image_offer ~sql_image_sku ~wsfc_domain_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
