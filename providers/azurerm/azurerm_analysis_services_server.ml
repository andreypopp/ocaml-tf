(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ipv4_firewall_rule = {
  name : string prop;
  range_end : string prop;
  range_start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipv4_firewall_rule) -> ()

let yojson_of_ipv4_firewall_rule =
  (function
   | {
       name = v_name;
       range_end = v_range_end;
       range_start = v_range_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range_start in
         ("range_start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range_end in
         ("range_end", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : ipv4_firewall_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipv4_firewall_rule

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

type azurerm_analysis_services_server = {
  admin_users : string prop list option; [@option]
  backup_blob_container_uri : string prop option; [@option]
  enable_power_bi_service : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  querypool_connection_mode : string prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  ipv4_firewall_rule : ipv4_firewall_rule list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_analysis_services_server) -> ()

let yojson_of_azurerm_analysis_services_server =
  (function
   | {
       admin_users = v_admin_users;
       backup_blob_container_uri = v_backup_blob_container_uri;
       enable_power_bi_service = v_enable_power_bi_service;
       id = v_id;
       location = v_location;
       name = v_name;
       querypool_connection_mode = v_querypool_connection_mode;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       ipv4_firewall_rule = v_ipv4_firewall_rule;
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
         if [] = v_ipv4_firewall_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ipv4_firewall_rule)
               v_ipv4_firewall_rule
           in
           let bnd = "ipv4_firewall_rule", arg in
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
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_querypool_connection_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "querypool_connection_mode", arg in
             bnd :: bnds
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
       let bnds =
         match v_enable_power_bi_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_power_bi_service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_blob_container_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_blob_container_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_users", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_analysis_services_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_analysis_services_server

[@@@deriving.end]

let ipv4_firewall_rule ~name ~range_end ~range_start () :
    ipv4_firewall_rule =
  { name; range_end; range_start }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_analysis_services_server ?admin_users
    ?backup_blob_container_uri ?enable_power_bi_service ?id
    ?querypool_connection_mode ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~ipv4_firewall_rule () :
    azurerm_analysis_services_server =
  {
    admin_users;
    backup_blob_container_uri;
    enable_power_bi_service;
    id;
    location;
    name;
    querypool_connection_mode;
    resource_group_name;
    sku;
    tags;
    ipv4_firewall_rule;
    timeouts;
  }

type t = {
  tf_name : string;
  admin_users : string list prop;
  backup_blob_container_uri : string prop;
  enable_power_bi_service : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  querypool_connection_mode : string prop;
  resource_group_name : string prop;
  server_full_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?admin_users ?backup_blob_container_uri
    ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~ipv4_firewall_rule __id =
  let __type = "azurerm_analysis_services_server" in
  let __attrs =
    ({
       tf_name = __id;
       admin_users = Prop.computed __type __id "admin_users";
       backup_blob_container_uri =
         Prop.computed __type __id "backup_blob_container_uri";
       enable_power_bi_service =
         Prop.computed __type __id "enable_power_bi_service";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       querypool_connection_mode =
         Prop.computed __type __id "querypool_connection_mode";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_full_name =
         Prop.computed __type __id "server_full_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_analysis_services_server
        (azurerm_analysis_services_server ?admin_users
           ?backup_blob_container_uri ?enable_power_bi_service ?id
           ?querypool_connection_mode ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku ~ipv4_firewall_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_users ?backup_blob_container_uri
    ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~ipv4_firewall_rule __id =
  let (r : _ Tf_core.resource) =
    make ?admin_users ?backup_blob_container_uri
      ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
      ?timeouts ~location ~name ~resource_group_name ~sku
      ~ipv4_firewall_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
