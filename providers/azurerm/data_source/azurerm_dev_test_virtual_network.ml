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

type allowed_subnets = {
  allow_public_ip : string prop;
  lab_subnet_name : string prop;
  resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allowed_subnets) -> ()

let yojson_of_allowed_subnets =
  (function
   | {
       allow_public_ip = v_allow_public_ip;
       lab_subnet_name = v_lab_subnet_name;
       resource_id = v_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lab_subnet_name
         in
         ("lab_subnet_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allow_public_ip
         in
         ("allow_public_ip", arg) :: bnds
       in
       `Assoc bnds
    : allowed_subnets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowed_subnets

[@@@deriving.end]

type subnet_overrides = {
  lab_subnet_name : string prop;
  resource_id : string prop;
  use_in_vm_creation_permission : string prop;
  use_public_ip_address_permission : string prop;
  virtual_network_pool_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet_overrides) -> ()

let yojson_of_subnet_overrides =
  (function
   | {
       lab_subnet_name = v_lab_subnet_name;
       resource_id = v_resource_id;
       use_in_vm_creation_permission =
         v_use_in_vm_creation_permission;
       use_public_ip_address_permission =
         v_use_public_ip_address_permission;
       virtual_network_pool_name = v_virtual_network_pool_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_pool_name
         in
         ("virtual_network_pool_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_use_public_ip_address_permission
         in
         ("use_public_ip_address_permission", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_use_in_vm_creation_permission
         in
         ("use_in_vm_creation_permission", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lab_subnet_name
         in
         ("lab_subnet_name", arg) :: bnds
       in
       `Assoc bnds
    : subnet_overrides -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet_overrides

[@@@deriving.end]

type azurerm_dev_test_virtual_network = {
  id : string prop option; [@option]
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_test_virtual_network) -> ()

let yojson_of_azurerm_dev_test_virtual_network =
  (function
   | {
       id = v_id;
       lab_name = v_lab_name;
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
         let arg = yojson_of_prop yojson_of_string v_lab_name in
         ("lab_name", arg) :: bnds
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
    : azurerm_dev_test_virtual_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_test_virtual_network

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_dev_test_virtual_network ?id ?timeouts ~lab_name ~name
    ~resource_group_name () : azurerm_dev_test_virtual_network =
  { id; lab_name; name; resource_group_name; timeouts }

type t = {
  allowed_subnets : allowed_subnets list prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet_overrides : subnet_overrides list prop;
  unique_identifier : string prop;
}

let make ?id ?timeouts ~lab_name ~name ~resource_group_name __id =
  let __type = "azurerm_dev_test_virtual_network" in
  let __attrs =
    ({
       allowed_subnets = Prop.computed __type __id "allowed_subnets";
       id = Prop.computed __type __id "id";
       lab_name = Prop.computed __type __id "lab_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnet_overrides =
         Prop.computed __type __id "subnet_overrides";
       unique_identifier =
         Prop.computed __type __id "unique_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_virtual_network
        (azurerm_dev_test_virtual_network ?id ?timeouts ~lab_name
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~lab_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~lab_name ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
