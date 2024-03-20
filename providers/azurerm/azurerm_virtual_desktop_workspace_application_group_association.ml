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

type azurerm_virtual_desktop_workspace_application_group_association = {
  application_group_id : string prop;
  id : string prop option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_virtual_desktop_workspace_application_group_association) ->
  ()

let yojson_of_azurerm_virtual_desktop_workspace_application_group_association
    =
  (function
   | {
       application_group_id = v_application_group_id;
       id = v_id;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_application_group_id
         in
         ("application_group_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_desktop_workspace_application_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_virtual_desktop_workspace_application_group_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_virtual_desktop_workspace_application_group_association
    ?id ?timeouts ~application_group_id ~workspace_id () :
    azurerm_virtual_desktop_workspace_application_group_association =
  { application_group_id; id; workspace_id; timeouts }

type t = {
  application_group_id : string prop;
  id : string prop;
  workspace_id : string prop;
}

let make ?id ?timeouts ~application_group_id ~workspace_id __id =
  let __type =
    "azurerm_virtual_desktop_workspace_application_group_association"
  in
  let __attrs =
    ({
       application_group_id =
         Prop.computed __type __id "application_group_id";
       id = Prop.computed __type __id "id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_workspace_application_group_association
        (azurerm_virtual_desktop_workspace_application_group_association
           ?id ?timeouts ~application_group_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~application_group_id
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~application_group_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
