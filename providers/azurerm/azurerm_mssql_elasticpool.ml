(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type per_database_settings = {
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}
[@@deriving yojson_of]
(** per_database_settings *)

type sku = {
  capacity : float prop;  (** capacity *)
  family : string prop option; [@option]  (** family *)
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  per_database_settings : per_database_settings list;
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_elasticpool *)

let per_database_settings ~max_capacity ~min_capacity () :
    per_database_settings =
  { max_capacity; min_capacity }

let sku ?family ~capacity ~name ~tier () : sku =
  { capacity; family; name; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_elasticpool ?enclave_type ?id ?license_type
    ?maintenance_configuration_name ?max_size_bytes ?max_size_gb
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~server_name ~per_database_settings ~sku ()
    : azurerm_mssql_elasticpool =
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

let make ?enclave_type ?id ?license_type
    ?maintenance_configuration_name ?max_size_bytes ?max_size_gb
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~server_name ~per_database_settings ~sku
    __id =
  let __type = "azurerm_mssql_elasticpool" in
  let __attrs =
    ({
       enclave_type = Prop.computed __type __id "enclave_type";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       maintenance_configuration_name =
         Prop.computed __type __id "maintenance_configuration_name";
       max_size_bytes = Prop.computed __type __id "max_size_bytes";
       max_size_gb = Prop.computed __type __id "max_size_gb";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_elasticpool
        (azurerm_mssql_elasticpool ?enclave_type ?id ?license_type
           ?maintenance_configuration_name ?max_size_bytes
           ?max_size_gb ?tags ?zone_redundant ?timeouts ~location
           ~name ~resource_group_name ~server_name
           ~per_database_settings ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?enclave_type ?id ?license_type
    ?maintenance_configuration_name ?max_size_bytes ?max_size_gb
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~server_name ~per_database_settings ~sku
    __id =
  let (r : _ Tf_core.resource) =
    make ?enclave_type ?id ?license_type
      ?maintenance_configuration_name ?max_size_bytes ?max_size_gb
      ?tags ?zone_redundant ?timeouts ~location ~name
      ~resource_group_name ~server_name ~per_database_settings ~sku
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
