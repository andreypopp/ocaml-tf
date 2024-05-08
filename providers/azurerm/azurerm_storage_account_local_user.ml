(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permission_scope__permissions = {
  create : bool prop option; [@option]
  delete : bool prop option; [@option]
  list_ : bool prop option; [@option] [@key "list"]
  read : bool prop option; [@option]
  write : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permission_scope__permissions) -> ()

let yojson_of_permission_scope__permissions =
  (function
   | {
       create = v_create;
       delete = v_delete;
       list_ = v_list_;
       read = v_read;
       write = v_write;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_list_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : permission_scope__permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permission_scope__permissions

[@@@deriving.end]

type permission_scope = {
  resource_name : string prop;
  service : string prop;
  permissions : permission_scope__permissions list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permission_scope) -> ()

let yojson_of_permission_scope =
  (function
   | {
       resource_name = v_resource_name;
       service = v_service;
       permissions = v_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_permissions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_permission_scope__permissions)
               v_permissions
           in
           let bnd = "permissions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_name in
         ("resource_name", arg) :: bnds
       in
       `Assoc bnds
    : permission_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permission_scope

[@@@deriving.end]

type ssh_authorized_key = {
  description : string prop option; [@option]
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssh_authorized_key) -> ()

let yojson_of_ssh_authorized_key =
  (function
   | { description = v_description; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
    : ssh_authorized_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssh_authorized_key

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

type azurerm_storage_account_local_user = {
  home_directory : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  ssh_key_enabled : bool prop option; [@option]
  ssh_password_enabled : bool prop option; [@option]
  storage_account_id : string prop;
  permission_scope : permission_scope list;
      [@default []] [@yojson_drop_default ( = )]
  ssh_authorized_key : ssh_authorized_key list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account_local_user) -> ()

let yojson_of_azurerm_storage_account_local_user =
  (function
   | {
       home_directory = v_home_directory;
       id = v_id;
       name = v_name;
       ssh_key_enabled = v_ssh_key_enabled;
       ssh_password_enabled = v_ssh_password_enabled;
       storage_account_id = v_storage_account_id;
       permission_scope = v_permission_scope;
       ssh_authorized_key = v_ssh_authorized_key;
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
         if [] = v_ssh_authorized_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssh_authorized_key)
               v_ssh_authorized_key
           in
           let bnd = "ssh_authorized_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_permission_scope then bnds
         else
           let arg =
             (yojson_of_list yojson_of_permission_scope)
               v_permission_scope
           in
           let bnd = "permission_scope", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_ssh_password_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ssh_password_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ssh_key_enabled", arg in
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
         match v_home_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "home_directory", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_account_local_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account_local_user

[@@@deriving.end]

let permission_scope__permissions ?create ?delete ?list_ ?read ?write
    () : permission_scope__permissions =
  { create; delete; list_; read; write }

let permission_scope ~resource_name ~service ~permissions () :
    permission_scope =
  { resource_name; service; permissions }

let ssh_authorized_key ?description ~key () : ssh_authorized_key =
  { description; key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account_local_user ?home_directory ?id
    ?ssh_key_enabled ?ssh_password_enabled ?(permission_scope = [])
    ?(ssh_authorized_key = []) ?timeouts ~name ~storage_account_id ()
    : azurerm_storage_account_local_user =
  {
    home_directory;
    id;
    name;
    ssh_key_enabled;
    ssh_password_enabled;
    storage_account_id;
    permission_scope;
    ssh_authorized_key;
    timeouts;
  }

type t = {
  tf_name : string;
  home_directory : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  sid : string prop;
  ssh_key_enabled : bool prop;
  ssh_password_enabled : bool prop;
  storage_account_id : string prop;
}

let make ?home_directory ?id ?ssh_key_enabled ?ssh_password_enabled
    ?(permission_scope = []) ?(ssh_authorized_key = []) ?timeouts
    ~name ~storage_account_id __id =
  let __type = "azurerm_storage_account_local_user" in
  let __attrs =
    ({
       tf_name = __id;
       home_directory = Prop.computed __type __id "home_directory";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       sid = Prop.computed __type __id "sid";
       ssh_key_enabled = Prop.computed __type __id "ssh_key_enabled";
       ssh_password_enabled =
         Prop.computed __type __id "ssh_password_enabled";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_local_user
        (azurerm_storage_account_local_user ?home_directory ?id
           ?ssh_key_enabled ?ssh_password_enabled ~permission_scope
           ~ssh_authorized_key ?timeouts ~name ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?home_directory ?id ?ssh_key_enabled
    ?ssh_password_enabled ?(permission_scope = [])
    ?(ssh_authorized_key = []) ?timeouts ~name ~storage_account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?home_directory ?id ?ssh_key_enabled ?ssh_password_enabled
      ~permission_scope ~ssh_authorized_key ?timeouts ~name
      ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
