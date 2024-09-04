(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type wsfc_domain_profile = {
  cluster_bootstrap_account_name : string prop option; [@option]
  cluster_operator_account_name : string prop option; [@option]
  cluster_subnet_type : string prop;
  fqdn : string prop;
  organizational_unit_path : string prop option; [@option]
  sql_service_account_name : string prop option; [@option]
  storage_account_primary_key : string prop option; [@option]
  storage_account_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : wsfc_domain_profile) -> ()

let yojson_of_wsfc_domain_profile =
  (function
   | {
       cluster_bootstrap_account_name =
         v_cluster_bootstrap_account_name;
       cluster_operator_account_name =
         v_cluster_operator_account_name;
       cluster_subnet_type = v_cluster_subnet_type;
       fqdn = v_fqdn;
       organizational_unit_path = v_organizational_unit_path;
       sql_service_account_name = v_sql_service_account_name;
       storage_account_primary_key = v_storage_account_primary_key;
       storage_account_url = v_storage_account_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_account_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_service_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_service_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organizational_unit_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_subnet_type
         in
         ("cluster_subnet_type", arg) :: bnds
       in
       let bnds =
         match v_cluster_operator_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_operator_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_bootstrap_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_bootstrap_account_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : wsfc_domain_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_wsfc_domain_profile

[@@@deriving.end]

type azurerm_mssql_virtual_machine_group = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sql_image_offer : string prop;
  sql_image_sku : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
  wsfc_domain_profile : wsfc_domain_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_virtual_machine_group) -> ()

let yojson_of_azurerm_mssql_virtual_machine_group =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sql_image_offer = v_sql_image_offer;
       sql_image_sku = v_sql_image_sku;
       tags = v_tags;
       timeouts = v_timeouts;
       wsfc_domain_profile = v_wsfc_domain_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_wsfc_domain_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_wsfc_domain_profile)
               v_wsfc_domain_profile
           in
           let bnd = "wsfc_domain_profile", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql_image_sku in
         ("sql_image_sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sql_image_offer
         in
         ("sql_image_offer", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_virtual_machine_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_virtual_machine_group

[@@@deriving.end]

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
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sql_image_offer : string prop;
  sql_image_sku : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~sql_image_offer ~sql_image_sku ~wsfc_domain_profile __id =
  let __type = "azurerm_mssql_virtual_machine_group" in
  let __attrs =
    ({
       tf_name = __id;
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
