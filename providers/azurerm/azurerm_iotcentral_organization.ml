(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type azurerm_iotcentral_organization = {
  display_name : string prop;
  id : string prop option; [@option]
  iotcentral_application_id : string prop;
  organization_id : string prop;
  parent_organization_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iotcentral_organization) -> ()

let yojson_of_azurerm_iotcentral_organization =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       iotcentral_application_id = v_iotcentral_application_id;
       organization_id = v_organization_id;
       parent_organization_id = v_parent_organization_id;
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
         match v_parent_organization_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_organization_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_organization_id
         in
         ("organization_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_iotcentral_application_id
         in
         ("iotcentral_application_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_iotcentral_organization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iotcentral_organization

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iotcentral_organization ?id ?parent_organization_id
    ?timeouts ~display_name ~iotcentral_application_id
    ~organization_id () : azurerm_iotcentral_organization =
  {
    display_name;
    id;
    iotcentral_application_id;
    organization_id;
    parent_organization_id;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
  organization_id : string prop;
  parent_organization_id : string prop;
}

let make ?id ?parent_organization_id ?timeouts ~display_name
    ~iotcentral_application_id ~organization_id __id =
  let __type = "azurerm_iotcentral_organization" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       iotcentral_application_id =
         Prop.computed __type __id "iotcentral_application_id";
       organization_id = Prop.computed __type __id "organization_id";
       parent_organization_id =
         Prop.computed __type __id "parent_organization_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iotcentral_organization
        (azurerm_iotcentral_organization ?id ?parent_organization_id
           ?timeouts ~display_name ~iotcentral_application_id
           ~organization_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parent_organization_id ?timeouts
    ~display_name ~iotcentral_application_id ~organization_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parent_organization_id ?timeouts ~display_name
      ~iotcentral_application_id ~organization_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
