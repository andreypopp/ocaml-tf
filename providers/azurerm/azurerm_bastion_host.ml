(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  name : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       name = v_name;
       public_ip_address_id = v_public_ip_address_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

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

type azurerm_bastion_host = {
  copy_paste_enabled : bool prop option; [@option]
  file_copy_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  ip_connect_enabled : bool prop option; [@option]
  kerberos_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop option; [@option]
  shareable_link_enabled : bool prop option; [@option]
  sku : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tunneling_enabled : bool prop option; [@option]
  virtual_network_id : string prop option; [@option]
  ip_configuration : ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bastion_host) -> ()

let yojson_of_azurerm_bastion_host =
  (function
   | {
       copy_paste_enabled = v_copy_paste_enabled;
       file_copy_enabled = v_file_copy_enabled;
       id = v_id;
       ip_connect_enabled = v_ip_connect_enabled;
       kerberos_enabled = v_kerberos_enabled;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scale_units = v_scale_units;
       shareable_link_enabled = v_shareable_link_enabled;
       sku = v_sku;
       tags = v_tags;
       tunneling_enabled = v_tunneling_enabled;
       virtual_network_id = v_virtual_network_id;
       ip_configuration = v_ip_configuration;
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
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunneling_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tunneling_enabled", arg in
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
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shareable_link_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shareable_link_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_units", arg in
             bnd :: bnds
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
         match v_kerberos_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_connect_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_connect_enabled", arg in
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
         match v_file_copy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "file_copy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_paste_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_paste_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_bastion_host -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bastion_host

[@@@deriving.end]

let ip_configuration ~name ~public_ip_address_id ~subnet_id () :
    ip_configuration =
  { name; public_ip_address_id; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bastion_host ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?kerberos_enabled ?scale_units
    ?shareable_link_enabled ?sku ?tags ?tunneling_enabled
    ?virtual_network_id ?(ip_configuration = []) ?timeouts ~location
    ~name ~resource_group_name () : azurerm_bastion_host =
  {
    copy_paste_enabled;
    file_copy_enabled;
    id;
    ip_connect_enabled;
    kerberos_enabled;
    location;
    name;
    resource_group_name;
    scale_units;
    shareable_link_enabled;
    sku;
    tags;
    tunneling_enabled;
    virtual_network_id;
    ip_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  copy_paste_enabled : bool prop;
  dns_name : string prop;
  file_copy_enabled : bool prop;
  id : string prop;
  ip_connect_enabled : bool prop;
  kerberos_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  shareable_link_enabled : bool prop;
  sku : string prop;
  tags : (string * string) list prop;
  tunneling_enabled : bool prop;
  virtual_network_id : string prop;
}

let make ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?kerberos_enabled ?scale_units
    ?shareable_link_enabled ?sku ?tags ?tunneling_enabled
    ?virtual_network_id ?(ip_configuration = []) ?timeouts ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_bastion_host" in
  let __attrs =
    ({
       tf_name = __id;
       copy_paste_enabled =
         Prop.computed __type __id "copy_paste_enabled";
       dns_name = Prop.computed __type __id "dns_name";
       file_copy_enabled =
         Prop.computed __type __id "file_copy_enabled";
       id = Prop.computed __type __id "id";
       ip_connect_enabled =
         Prop.computed __type __id "ip_connect_enabled";
       kerberos_enabled =
         Prop.computed __type __id "kerberos_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_units = Prop.computed __type __id "scale_units";
       shareable_link_enabled =
         Prop.computed __type __id "shareable_link_enabled";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       tunneling_enabled =
         Prop.computed __type __id "tunneling_enabled";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bastion_host
        (azurerm_bastion_host ?copy_paste_enabled ?file_copy_enabled
           ?id ?ip_connect_enabled ?kerberos_enabled ?scale_units
           ?shareable_link_enabled ?sku ?tags ?tunneling_enabled
           ?virtual_network_id ~ip_configuration ?timeouts ~location
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?kerberos_enabled ?scale_units
    ?shareable_link_enabled ?sku ?tags ?tunneling_enabled
    ?virtual_network_id ?(ip_configuration = []) ?timeouts ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?copy_paste_enabled ?file_copy_enabled ?id
      ?ip_connect_enabled ?kerberos_enabled ?scale_units
      ?shareable_link_enabled ?sku ?tags ?tunneling_enabled
      ?virtual_network_id ~ip_configuration ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
