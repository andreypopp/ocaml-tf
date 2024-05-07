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

type azurerm_cdn_frontdoor_firewall_policy = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_firewall_policy) -> ()

let yojson_of_azurerm_cdn_frontdoor_firewall_policy =
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
    : azurerm_cdn_frontdoor_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_firewall_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cdn_frontdoor_firewall_policy ?id ?timeouts ~name
    ~resource_group_name () : azurerm_cdn_frontdoor_firewall_policy =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  enabled : bool prop;
  frontend_endpoint_ids : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  redirect_url : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_cdn_frontdoor_firewall_policy" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       frontend_endpoint_ids =
         Prop.computed __type __id "frontend_endpoint_ids";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       redirect_url = Prop.computed __type __id "redirect_url";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_firewall_policy
        (azurerm_cdn_frontdoor_firewall_policy ?id ?timeouts ~name
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
