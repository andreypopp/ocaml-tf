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

type cross_tenant_scopes = {
  management_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subscriptions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cross_tenant_scopes) -> ()

let yojson_of_cross_tenant_scopes =
  (function
   | {
       management_groups = v_management_groups;
       subscriptions = v_subscriptions;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subscriptions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subscriptions
           in
           let bnd = "subscriptions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_management_groups
           in
           let bnd = "management_groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cross_tenant_scopes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cross_tenant_scopes

[@@@deriving.end]

type scope = {
  management_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subscription_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scope) -> ()

let yojson_of_scope =
  (function
   | {
       management_group_ids = v_management_group_ids;
       subscription_ids = v_subscription_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subscription_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subscription_ids
           in
           let bnd = "subscription_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_management_group_ids
           in
           let bnd = "management_group_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope

[@@@deriving.end]

type azurerm_network_manager = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_manager) -> ()

let yojson_of_azurerm_network_manager =
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
    : azurerm_network_manager -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_manager

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_network_manager ?id ?timeouts ~name ~resource_group_name
    () : azurerm_network_manager =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  cross_tenant_scopes : cross_tenant_scopes list prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope : scope list prop;
  scope_accesses : string list prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_network_manager" in
  let __attrs =
    ({
       tf_name = __id;
       cross_tenant_scopes =
         Prop.computed __type __id "cross_tenant_scopes";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope = Prop.computed __type __id "scope";
       scope_accesses = Prop.computed __type __id "scope_accesses";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager
        (azurerm_network_manager ?id ?timeouts ~name
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
