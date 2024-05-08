(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type per_database_settings = {
  max_capacity : float prop;
  min_capacity : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : per_database_settings) -> ()

let yojson_of_per_database_settings =
  (function
   | { max_capacity = v_max_capacity; min_capacity = v_min_capacity }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_capacity in
         ("min_capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_capacity in
         ("max_capacity", arg) :: bnds
       in
       `Assoc bnds
    : per_database_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_per_database_settings

[@@@deriving.end]

type sku = {
  capacity : float prop;
  family : string prop option; [@option]
  name : string prop;
  tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | {
       capacity = v_capacity;
       family = v_family;
       name = v_name;
       tier = v_tier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "family", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_mssql_elasticpool = {
  enclave_type : string prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  maintenance_configuration_name : string prop option; [@option]
  max_size_bytes : float prop option; [@option]
  max_size_gb : float prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string prop) list option; [@option]
  zone_redundant : bool prop option; [@option]
  per_database_settings : per_database_settings list;
      [@default []] [@yojson_drop_default ( = )]
  sku : sku list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_elasticpool) -> ()

let yojson_of_azurerm_mssql_elasticpool =
  (function
   | {
       enclave_type = v_enclave_type;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       maintenance_configuration_name =
         v_maintenance_configuration_name;
       max_size_bytes = v_max_size_bytes;
       max_size_gb = v_max_size_gb;
       name = v_name;
       resource_group_name = v_resource_group_name;
       server_name = v_server_name;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       per_database_settings = v_per_database_settings;
       sku = v_sku;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_per_database_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_per_database_settings)
               v_per_database_settings
           in
           let bnd = "per_database_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_size_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enclave_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enclave_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_elasticpool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_elasticpool

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
