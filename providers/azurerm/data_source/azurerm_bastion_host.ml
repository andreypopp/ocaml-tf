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

type azurerm_bastion_host = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bastion_host) -> ()

let yojson_of_azurerm_bastion_host =
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
    : azurerm_bastion_host -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bastion_host

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_bastion_host ?id ?timeouts ~name ~resource_group_name ()
    : azurerm_bastion_host =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  copy_paste_enabled : bool prop;
  dns_name : string prop;
  file_copy_enabled : bool prop;
  id : string prop;
  ip_configuration : ip_configuration list prop;
  ip_connect_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  shareable_link_enabled : bool prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  tunneling_enabled : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
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
       ip_configuration =
         Prop.computed __type __id "ip_configuration";
       ip_connect_enabled =
         Prop.computed __type __id "ip_connect_enabled";
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bastion_host
        (azurerm_bastion_host ?id ?timeouts ~name
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
