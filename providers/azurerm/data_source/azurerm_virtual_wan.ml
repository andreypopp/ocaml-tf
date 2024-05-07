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

type azurerm_virtual_wan = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_wan) -> ()

let yojson_of_azurerm_virtual_wan =
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
    : azurerm_virtual_wan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_wan

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_wan ?id ?timeouts ~name ~resource_group_name () :
    azurerm_virtual_wan =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  allow_branch_to_branch_traffic : bool prop;
  disable_vpn_encryption : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  office365_local_breakout_category : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  virtual_hub_ids : string list prop;
  vpn_site_ids : string list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_wan" in
  let __attrs =
    ({
       tf_name = __id;
       allow_branch_to_branch_traffic =
         Prop.computed __type __id "allow_branch_to_branch_traffic";
       disable_vpn_encryption =
         Prop.computed __type __id "disable_vpn_encryption";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       office365_local_breakout_category =
         Prop.computed __type __id
           "office365_local_breakout_category";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       virtual_hub_ids = Prop.computed __type __id "virtual_hub_ids";
       vpn_site_ids = Prop.computed __type __id "vpn_site_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_wan
        (azurerm_virtual_wan ?id ?timeouts ~name ~resource_group_name
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
