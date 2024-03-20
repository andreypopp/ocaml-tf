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

type azurerm_portal_dashboard = {
  dashboard_properties : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_portal_dashboard) -> ()

let yojson_of_azurerm_portal_dashboard =
  (function
   | {
       dashboard_properties = v_dashboard_properties;
       display_name = v_display_name;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dashboard_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dashboard_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_portal_dashboard -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_portal_dashboard

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_portal_dashboard ?dashboard_properties ?display_name ?id
    ?name ?timeouts ~resource_group_name () :
    azurerm_portal_dashboard =
  {
    dashboard_properties;
    display_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  dashboard_properties : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?dashboard_properties ?display_name ?id ?name ?timeouts
    ~resource_group_name __id =
  let __type = "azurerm_portal_dashboard" in
  let __attrs =
    ({
       dashboard_properties =
         Prop.computed __type __id "dashboard_properties";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_portal_dashboard
        (azurerm_portal_dashboard ?dashboard_properties ?display_name
           ?id ?name ?timeouts ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?dashboard_properties ?display_name ?id ?name
    ?timeouts ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?dashboard_properties ?display_name ?id ?name ?timeouts
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
