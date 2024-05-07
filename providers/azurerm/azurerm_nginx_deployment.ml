(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type frontend_private = {
  allocation_method : string prop;
  ip_address : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_private) -> ()

let yojson_of_frontend_private =
  (function
   | {
       allocation_method = v_allocation_method;
       ip_address = v_ip_address;
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
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_method
         in
         ("allocation_method", arg) :: bnds
       in
       `Assoc bnds
    : frontend_private -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_private

[@@@deriving.end]

type frontend_public = {
  ip_address : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_public) -> ()

let yojson_of_frontend_public =
  (function
   | { ip_address = v_ip_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : frontend_public -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_public

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type logging_storage_account = {
  container_name : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_storage_account) -> ()

let yojson_of_logging_storage_account =
  (function
   | { container_name = v_container_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_storage_account

[@@@deriving.end]

type network_interface = { subnet_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

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

type azurerm_nginx_deployment = {
  automatic_upgrade_channel : string prop option; [@option]
  capacity : float prop option; [@option]
  diagnose_support_enabled : bool prop option; [@option]
  email : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  managed_resource_group : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  frontend_private : frontend_private list;
  frontend_public : frontend_public list;
  identity : identity list;
  logging_storage_account : logging_storage_account list;
  network_interface : network_interface list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nginx_deployment) -> ()

let yojson_of_azurerm_nginx_deployment =
  (function
   | {
       automatic_upgrade_channel = v_automatic_upgrade_channel;
       capacity = v_capacity;
       diagnose_support_enabled = v_diagnose_support_enabled;
       email = v_email;
       id = v_id;
       location = v_location;
       managed_resource_group = v_managed_resource_group;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       frontend_private = v_frontend_private;
       frontend_public = v_frontend_public;
       identity = v_identity;
       logging_storage_account = v_logging_storage_account;
       network_interface = v_network_interface;
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
           yojson_of_list yojson_of_network_interface
             v_network_interface
         in
         ("network_interface", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_storage_account
             v_logging_storage_account
         in
         ("logging_storage_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_frontend_public v_frontend_public
         in
         ("frontend_public", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_frontend_private
             v_frontend_private
         in
         ("frontend_private", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group", arg in
             bnd :: bnds
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
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_diagnose_support_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "diagnose_support_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_upgrade_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "automatic_upgrade_channel", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_nginx_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nginx_deployment

[@@@deriving.end]

let frontend_private ~allocation_method ~ip_address ~subnet_id () :
    frontend_private =
  { allocation_method; ip_address; subnet_id }

let frontend_public ?ip_address () : frontend_public = { ip_address }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let logging_storage_account ?container_name ?name () :
    logging_storage_account =
  { container_name; name }

let network_interface ~subnet_id () : network_interface =
  { subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nginx_deployment ?automatic_upgrade_channel ?capacity
    ?diagnose_support_enabled ?email ?id ?managed_resource_group
    ?tags ?(frontend_private = []) ?(frontend_public = [])
    ?(identity = []) ?(logging_storage_account = [])
    ?(network_interface = []) ?timeouts ~location ~name
    ~resource_group_name ~sku () : azurerm_nginx_deployment =
  {
    automatic_upgrade_channel;
    capacity;
    diagnose_support_enabled;
    email;
    id;
    location;
    managed_resource_group;
    name;
    resource_group_name;
    sku;
    tags;
    frontend_private;
    frontend_public;
    identity;
    logging_storage_account;
    network_interface;
    timeouts;
  }

type t = {
  tf_name : string;
  automatic_upgrade_channel : string prop;
  capacity : float prop;
  diagnose_support_enabled : bool prop;
  email : string prop;
  id : string prop;
  ip_address : string prop;
  location : string prop;
  managed_resource_group : string prop;
  name : string prop;
  nginx_version : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?automatic_upgrade_channel ?capacity
    ?diagnose_support_enabled ?email ?id ?managed_resource_group
    ?tags ?(frontend_private = []) ?(frontend_public = [])
    ?(identity = []) ?(logging_storage_account = [])
    ?(network_interface = []) ?timeouts ~location ~name
    ~resource_group_name ~sku __id =
  let __type = "azurerm_nginx_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       automatic_upgrade_channel =
         Prop.computed __type __id "automatic_upgrade_channel";
       capacity = Prop.computed __type __id "capacity";
       diagnose_support_enabled =
         Prop.computed __type __id "diagnose_support_enabled";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       location = Prop.computed __type __id "location";
       managed_resource_group =
         Prop.computed __type __id "managed_resource_group";
       name = Prop.computed __type __id "name";
       nginx_version = Prop.computed __type __id "nginx_version";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nginx_deployment
        (azurerm_nginx_deployment ?automatic_upgrade_channel
           ?capacity ?diagnose_support_enabled ?email ?id
           ?managed_resource_group ?tags ~frontend_private
           ~frontend_public ~identity ~logging_storage_account
           ~network_interface ?timeouts ~location ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_upgrade_channel ?capacity
    ?diagnose_support_enabled ?email ?id ?managed_resource_group
    ?tags ?(frontend_private = []) ?(frontend_public = [])
    ?(identity = []) ?(logging_storage_account = [])
    ?(network_interface = []) ?timeouts ~location ~name
    ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_upgrade_channel ?capacity
      ?diagnose_support_enabled ?email ?id ?managed_resource_group
      ?tags ~frontend_private ~frontend_public ~identity
      ~logging_storage_account ~network_interface ?timeouts ~location
      ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
