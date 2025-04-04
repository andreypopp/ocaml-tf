(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type management_network_profile = {
  network_interface_private_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_network_profile) -> ()

let yojson_of_management_network_profile =
  (function
   | {
       network_interface_private_ip_addresses =
         v_network_interface_private_ip_addresses;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface_private_ip_addresses
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_network_interface_private_ip_addresses
           in
           let bnd = "network_interface_private_ip_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : management_network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_network_profile

[@@@deriving.end]

type network_profile = {
  network_interface_private_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       network_interface_private_ip_addresses =
         v_network_interface_private_ip_addresses;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface_private_ip_addresses
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_network_interface_private_ip_addresses
           in
           let bnd = "network_interface_private_ip_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

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

type azurerm_dedicated_hardware_security_module = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stamp_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  zones : string prop list option; [@option]
  management_network_profile : management_network_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_profile : network_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dedicated_hardware_security_module) -> ()

let yojson_of_azurerm_dedicated_hardware_security_module =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       stamp_id = v_stamp_id;
       tags = v_tags;
       zones = v_zones;
       management_network_profile = v_management_network_profile;
       network_profile = v_network_profile;
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
         if Stdlib.( = ) [] v_network_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_profile)
               v_network_profile
           in
           let bnd = "network_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management_network_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_management_network_profile)
               v_management_network_profile
           in
           let bnd = "management_network_profile", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
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
         match v_stamp_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stamp_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
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
    : azurerm_dedicated_hardware_security_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dedicated_hardware_security_module

[@@@deriving.end]

let management_network_profile
    ~network_interface_private_ip_addresses ~subnet_id () :
    management_network_profile =
  { network_interface_private_ip_addresses; subnet_id }

let network_profile ~network_interface_private_ip_addresses
    ~subnet_id () : network_profile =
  { network_interface_private_ip_addresses; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dedicated_hardware_security_module ?id ?stamp_id ?tags
    ?zones ?(management_network_profile = []) ?timeouts ~location
    ~name ~resource_group_name ~sku_name ~network_profile () :
    azurerm_dedicated_hardware_security_module =
  {
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    stamp_id;
    tags;
    zones;
    management_network_profile;
    network_profile;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stamp_id : string prop;
  tags : string Tf_core.assoc prop;
  zones : string list prop;
}

let make ?id ?stamp_id ?tags ?zones
    ?(management_network_profile = []) ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~network_profile __id =
  let __type = "azurerm_dedicated_hardware_security_module" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       stamp_id = Prop.computed __type __id "stamp_id";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dedicated_hardware_security_module
        (azurerm_dedicated_hardware_security_module ?id ?stamp_id
           ?tags ?zones ~management_network_profile ?timeouts
           ~location ~name ~resource_group_name ~sku_name
           ~network_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?stamp_id ?tags ?zones
    ?(management_network_profile = []) ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~network_profile __id =
  let (r : _ Tf_core.resource) =
    make ?id ?stamp_id ?tags ?zones ~management_network_profile
      ?timeouts ~location ~name ~resource_group_name ~sku_name
      ~network_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
