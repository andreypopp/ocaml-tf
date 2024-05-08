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
  ip_address : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_ip_address then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_address
           in
           let bnd = "ip_address", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : frontend_public -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_public

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type logging_storage_account = {
  container_name : string prop;
  name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
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

type azurerm_nginx_deployment = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nginx_deployment) -> ()

let yojson_of_azurerm_nginx_deployment =
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
    : azurerm_nginx_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nginx_deployment

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_nginx_deployment ?id ?timeouts ~name ~resource_group_name
    () : azurerm_nginx_deployment =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  automatic_upgrade_channel : string prop;
  capacity : float prop;
  diagnose_support_enabled : bool prop;
  email : string prop;
  frontend_private : frontend_private list prop;
  frontend_public : frontend_public list prop;
  id : string prop;
  identity : identity list prop;
  ip_address : string prop;
  location : string prop;
  logging_storage_account : logging_storage_account list prop;
  managed_resource_group : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  nginx_version : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
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
       frontend_private =
         Prop.computed __type __id "frontend_private";
       frontend_public = Prop.computed __type __id "frontend_public";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       ip_address = Prop.computed __type __id "ip_address";
       location = Prop.computed __type __id "location";
       logging_storage_account =
         Prop.computed __type __id "logging_storage_account";
       managed_resource_group =
         Prop.computed __type __id "managed_resource_group";
       name = Prop.computed __type __id "name";
       network_interface =
         Prop.computed __type __id "network_interface";
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
        (azurerm_nginx_deployment ?id ?timeouts ~name
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
