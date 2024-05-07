(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permission = {
  actions : string prop list option; [@option]
  data_actions : string prop list option; [@option]
  not_actions : string prop list option; [@option]
  not_data_actions : string prop list option; [@option]
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
         match v_not_data_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_data_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "data_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permission

[@@@deriving.end]

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

type azurerm_key_vault_managed_hardware_security_module_role_definition = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role_name : string prop option; [@option]
  vault_base_url : string prop;
  permission : permission list;
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
       description = v_description;
       id = v_id;
       name = v_name;
       role_name = v_role_name;
       vault_base_url = v_vault_base_url;
       permission = v_permission;
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
           yojson_of_list yojson_of_permission v_permission
         in
         ("permission", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vault_base_url
         in
         ("vault_base_url", arg) :: bnds
       in
       let bnds =
         match v_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_name", arg in
             bnd :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_managed_hardware_security_module_role_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition

[@@@deriving.end]

let permission ?actions ?data_actions ?not_actions ?not_data_actions
    () : permission =
  { actions; data_actions; not_actions; not_data_actions }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_hardware_security_module_role_definition
    ?description ?id ?role_name ?(permission = []) ?timeouts ~name
    ~vault_base_url () :
    azurerm_key_vault_managed_hardware_security_module_role_definition
    =
  {
    description;
    id;
    name;
    role_name;
    vault_base_url;
    permission;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  role_name : string prop;
  role_type : string prop;
  vault_base_url : string prop;
}

let make ?description ?id ?role_name ?(permission = []) ?timeouts
    ~name ~vault_base_url __id =
  let __type =
    "azurerm_key_vault_managed_hardware_security_module_role_definition"
  in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
           ?description ?id ?role_name ~permission ?timeouts ~name
           ~vault_base_url ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?role_name
    ?(permission = []) ?timeouts ~name ~vault_base_url __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?role_name ~permission ?timeouts ~name
      ~vault_base_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
