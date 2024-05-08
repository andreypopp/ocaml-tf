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

type permission = {
  actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  data_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not_data_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permission) -> ()

let yojson_of_permission =
  (function
   | {
       actions = v_actions;
       data_actions = v_data_actions;
       not_actions = v_not_actions;
       not_data_actions = v_not_data_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_not_data_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_not_data_actions
           in
           let bnd = "not_data_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_not_actions
           in
           let bnd = "not_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_data_actions
           in
           let bnd = "data_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permission

[@@@deriving.end]

type azurerm_key_vault_managed_hardware_security_module_role_definition = {
  id : string prop option; [@option]
  name : string prop;
  vault_base_url : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_key_vault_managed_hardware_security_module_role_definition) ->
  ()

let yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition
    =
  (function
   | {
       id = v_id;
       name = v_name;
       vault_base_url = v_vault_base_url;
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
           yojson_of_prop yojson_of_string v_vault_base_url
         in
         ("vault_base_url", arg) :: bnds
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
    : azurerm_key_vault_managed_hardware_security_module_role_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_managed_hardware_security_module_role_definition
    ?id ?timeouts ~name ~vault_base_url () :
    azurerm_key_vault_managed_hardware_security_module_role_definition
    =
  { id; name; vault_base_url; timeouts }

type t = {
  tf_name : string;
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permission : permission list prop;
  resource_manager_id : string prop;
  role_name : string prop;
  role_type : string prop;
  vault_base_url : string prop;
}

let make ?id ?timeouts ~name ~vault_base_url __id =
  let __type =
    "azurerm_key_vault_managed_hardware_security_module_role_definition"
  in
  let __attrs =
    ({
       tf_name = __id;
       assignable_scopes =
         Prop.computed __type __id "assignable_scopes";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permission = Prop.computed __type __id "permission";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       role_name = Prop.computed __type __id "role_name";
       role_type = Prop.computed __type __id "role_type";
       vault_base_url = Prop.computed __type __id "vault_base_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition
        (azurerm_key_vault_managed_hardware_security_module_role_definition
           ?id ?timeouts ~name ~vault_base_url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~vault_base_url __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~vault_base_url __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
