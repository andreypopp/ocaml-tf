(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_network_interface_application_gateway_backend_address_pool_association = {
  backend_address_pool_id : string prop;
  id : string prop option; [@option]
  ip_configuration_name : string prop;
  network_interface_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_network_interface_application_gateway_backend_address_pool_association) ->
  ()

let yojson_of_azurerm_network_interface_application_gateway_backend_address_pool_association
    =
  (function
   | {
       backend_address_pool_id = v_backend_address_pool_id;
       id = v_id;
       ip_configuration_name = v_ip_configuration_name;
       network_interface_id = v_network_interface_id;
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
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_configuration_name
         in
         ("ip_configuration_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_backend_address_pool_id
         in
         ("backend_address_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_network_interface_application_gateway_backend_address_pool_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_network_interface_application_gateway_backend_address_pool_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_interface_application_gateway_backend_address_pool_association
    ?id ?timeouts ~backend_address_pool_id ~ip_configuration_name
    ~network_interface_id () :
    azurerm_network_interface_application_gateway_backend_address_pool_association
    =
  {
    backend_address_pool_id;
    id;
    ip_configuration_name;
    network_interface_id;
    timeouts;
  }

type t = {
  tf_name : string;
  backend_address_pool_id : string prop;
  id : string prop;
  ip_configuration_name : string prop;
  network_interface_id : string prop;
}

let make ?id ?timeouts ~backend_address_pool_id
    ~ip_configuration_name ~network_interface_id __id =
  let __type =
    "azurerm_network_interface_application_gateway_backend_address_pool_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       id = Prop.computed __type __id "id";
       ip_configuration_name =
         Prop.computed __type __id "ip_configuration_name";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_interface_application_gateway_backend_address_pool_association
        (azurerm_network_interface_application_gateway_backend_address_pool_association
           ?id ?timeouts ~backend_address_pool_id
           ~ip_configuration_name ~network_interface_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backend_address_pool_id
    ~ip_configuration_name ~network_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backend_address_pool_id
      ~ip_configuration_name ~network_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
