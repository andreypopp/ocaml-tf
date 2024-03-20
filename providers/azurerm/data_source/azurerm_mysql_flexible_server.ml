(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type high_availability = {
  mode : string prop;
  standby_availability_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : high_availability) -> ()

let yojson_of_high_availability =
  (function
   | {
       mode = v_mode;
       standby_availability_zone = v_standby_availability_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_standby_availability_zone
         in
         ("standby_availability_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : high_availability -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_high_availability

[@@@deriving.end]

type maintenance_window = {
  day_of_week : float prop;
  start_hour : float prop;
  start_minute : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | {
       day_of_week = v_day_of_week;
       start_hour = v_start_hour;
       start_minute = v_start_minute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_minute in
         ("start_minute", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_hour in
         ("start_hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type storage = {
  auto_grow_enabled : bool prop;
  io_scaling_enabled : bool prop;
  iops : float prop;
  size_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage) -> ()

let yojson_of_storage =
  (function
   | {
       auto_grow_enabled = v_auto_grow_enabled;
       io_scaling_enabled = v_io_scaling_enabled;
       iops = v_iops;
       size_gb = v_size_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_gb in
         ("size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_io_scaling_enabled
         in
         ("io_scaling_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_auto_grow_enabled
         in
         ("auto_grow_enabled", arg) :: bnds
       in
       `Assoc bnds
    : storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage

[@@@deriving.end]

type azurerm_mysql_flexible_server = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mysql_flexible_server) -> ()

let yojson_of_azurerm_mysql_flexible_server =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mysql_flexible_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mysql_flexible_server

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mysql_flexible_server ?id ?timeouts ~name
    ~resource_group_name () : azurerm_mysql_flexible_server =
  { id; name; resource_group_name; timeouts }

type t = {
  administrator_login : string prop;
  backup_retention_days : float prop;
  delegated_subnet_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  high_availability : high_availability list prop;
  id : string prop;
  location : string prop;
  maintenance_window : maintenance_window list prop;
  name : string prop;
  private_dns_zone_id : string prop;
  public_network_access_enabled : bool prop;
  replica_capacity : float prop;
  replication_role : string prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  storage : storage list prop;
  tags : (string * string) list prop;
  version : string prop;
  zone : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_mysql_flexible_server" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       backup_retention_days =
         Prop.computed __type __id "backup_retention_days";
       delegated_subnet_id =
         Prop.computed __type __id "delegated_subnet_id";
       fqdn = Prop.computed __type __id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __type __id "geo_redundant_backup_enabled";
       high_availability =
         Prop.computed __type __id "high_availability";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       name = Prop.computed __type __id "name";
       private_dns_zone_id =
         Prop.computed __type __id "private_dns_zone_id";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       replica_capacity =
         Prop.computed __type __id "replica_capacity";
       replication_role =
         Prop.computed __type __id "replication_role";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       sku_name = Prop.computed __type __id "sku_name";
       storage = Prop.computed __type __id "storage";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mysql_flexible_server
        (azurerm_mysql_flexible_server ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
