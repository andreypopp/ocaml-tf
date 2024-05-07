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

type azurerm_virtual_network = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network) -> ()

let yojson_of_azurerm_virtual_network =
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
    : azurerm_virtual_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_network ?id ?timeouts ~name ~resource_group_name
    () : azurerm_virtual_network =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  address_space : string list prop;
  dns_servers : string list prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  vnet_peerings : (string * string) list prop;
  vnet_peerings_addresses : string list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_network" in
  let __attrs =
    ({
       tf_name = __id;
       address_space = Prop.computed __type __id "address_space";
       dns_servers = Prop.computed __type __id "dns_servers";
       guid = Prop.computed __type __id "guid";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       vnet_peerings = Prop.computed __type __id "vnet_peerings";
       vnet_peerings_addresses =
         Prop.computed __type __id "vnet_peerings_addresses";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network
        (azurerm_virtual_network ?id ?timeouts ~name
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
