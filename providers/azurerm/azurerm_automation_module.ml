(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type module_link__hash = {
  algorithm : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : module_link__hash) -> ()

let yojson_of_module_link__hash =
  (function
   | { algorithm = v_algorithm; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : module_link__hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_module_link__hash

[@@@deriving.end]

type module_link = {
  uri : string prop;
  hash : module_link__hash list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : module_link) -> ()

let yojson_of_module_link =
  (function
   | { uri = v_uri; hash = v_hash } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_module_link__hash v_hash
         in
         ("hash", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : module_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_module_link

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

type azurerm_automation_module = {
  automation_account_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  module_link : module_link list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_module) -> ()

let yojson_of_azurerm_automation_module =
  (function
   | {
       automation_account_name = v_automation_account_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       module_link = v_module_link;
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
           yojson_of_list yojson_of_module_link v_module_link
         in
         ("module_link", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_module -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_module

[@@@deriving.end]

let module_link__hash ~algorithm ~value () : module_link__hash =
  { algorithm; value }

let module_link ?(hash = []) ~uri () : module_link = { uri; hash }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_module ?id ?timeouts ~automation_account_name
    ~name ~resource_group_name ~module_link () :
    azurerm_automation_module =
  {
    automation_account_name;
    id;
    name;
    resource_group_name;
    module_link;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name ~module_link __id =
  let __type = "azurerm_automation_module" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_module
        (azurerm_automation_module ?id ?timeouts
           ~automation_account_name ~name ~resource_group_name
           ~module_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name ~module_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~automation_account_name ~name
      ~resource_group_name ~module_link __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
