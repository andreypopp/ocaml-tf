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

type azurerm_public_ip = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_public_ip) -> ()

let yojson_of_azurerm_public_ip =
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
    : azurerm_public_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_public_ip

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_public_ip ?id ?timeouts ~name ~resource_group_name () :
    azurerm_public_ip =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  allocation_method : string prop;
  ddos_protection_mode : string prop;
  ddos_protection_plan_id : string prop;
  domain_name_label : string prop;
  fqdn : string prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  ip_address : string prop;
  ip_tags : string Tf_core.assoc prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  reverse_fqdn : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  zones : string list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_public_ip" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_method =
         Prop.computed __type __id "allocation_method";
       ddos_protection_mode =
         Prop.computed __type __id "ddos_protection_mode";
       ddos_protection_plan_id =
         Prop.computed __type __id "ddos_protection_plan_id";
       domain_name_label =
         Prop.computed __type __id "domain_name_label";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       ip_address = Prop.computed __type __id "ip_address";
       ip_tags = Prop.computed __type __id "ip_tags";
       ip_version = Prop.computed __type __id "ip_version";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       reverse_fqdn = Prop.computed __type __id "reverse_fqdn";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_public_ip
        (azurerm_public_ip ?id ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
