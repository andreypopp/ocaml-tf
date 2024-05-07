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

type azurerm_cdn_frontdoor_rule_set = {
  id : string prop option; [@option]
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_rule_set) -> ()

let yojson_of_azurerm_cdn_frontdoor_rule_set =
  (function
   | {
       id = v_id;
       name = v_name;
       profile_name = v_profile_name;
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
         let arg = yojson_of_prop yojson_of_string v_profile_name in
         ("profile_name", arg) :: bnds
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
    : azurerm_cdn_frontdoor_rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_rule_set

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cdn_frontdoor_rule_set ?id ?timeouts ~name ~profile_name
    ~resource_group_name () : azurerm_cdn_frontdoor_rule_set =
  { id; name; profile_name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
    =
  let __type = "azurerm_cdn_frontdoor_rule_set" in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       profile_name = Prop.computed __type __id "profile_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_rule_set
        (azurerm_cdn_frontdoor_rule_set ?id ?timeouts ~name
           ~profile_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~profile_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
