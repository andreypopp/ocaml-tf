(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption__managed_identity = {
  use_system_assigned_identity : bool prop option; [@option]
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption__managed_identity) -> ()

let yojson_of_encryption__managed_identity =
  (function
   | {
       use_system_assigned_identity = v_use_system_assigned_identity;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_system_assigned_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_system_assigned_identity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption__managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption__managed_identity

[@@@deriving.end]

type encryption = {
  key_vault_key_identifier : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  managed_identity : encryption__managed_identity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       key_vault_key_identifier = v_key_vault_key_identifier;
       type_ = v_type_;
       managed_identity = v_managed_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption__managed_identity
             v_managed_identity
         in
         ("managed_identity", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_key_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type key_delivery_access_control = {
  default_action : string prop option; [@option]
  ip_allow_list : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_delivery_access_control) -> ()

let yojson_of_key_delivery_access_control =
  (function
   | {
       default_action = v_default_action;
       ip_allow_list = v_ip_allow_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_allow_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_allow_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : key_delivery_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_delivery_access_control

[@@@deriving.end]

type storage_account__managed_identity = {
  use_system_assigned_identity : bool prop option; [@option]
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account__managed_identity) -> ()

let yojson_of_storage_account__managed_identity =
  (function
   | {
       use_system_assigned_identity = v_use_system_assigned_identity;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_system_assigned_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_system_assigned_identity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_account__managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account__managed_identity

[@@@deriving.end]

type storage_account = {
  id : string prop;
  is_primary : bool prop option; [@option]
  managed_identity : storage_account__managed_identity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | {
       id = v_id;
       is_primary = v_is_primary;
       managed_identity = v_managed_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_account__managed_identity
             v_managed_identity
         in
         ("managed_identity", arg) :: bnds
       in
       let bnds =
         match v_is_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_primary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

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

type azurerm_media_services_account = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  storage_authentication_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  encryption : encryption list;
  identity : identity list;
  key_delivery_access_control : key_delivery_access_control list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_services_account) -> ()

let yojson_of_azurerm_media_services_account =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       storage_authentication_type = v_storage_authentication_type;
       tags = v_tags;
       encryption = v_encryption;
       identity = v_identity;
       key_delivery_access_control = v_key_delivery_access_control;
       storage_account = v_storage_account;
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
           yojson_of_list yojson_of_storage_account v_storage_account
         in
         ("storage_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_key_delivery_access_control
             v_key_delivery_access_control
         in
         ("key_delivery_access_control", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption v_encryption
         in
         ("encryption", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_authentication_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : azurerm_media_services_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_services_account

[@@@deriving.end]

let encryption__managed_identity ?use_system_assigned_identity
    ?user_assigned_identity_id () : encryption__managed_identity =
  { use_system_assigned_identity; user_assigned_identity_id }

let encryption ?key_vault_key_identifier ?type_
    ?(managed_identity = []) () : encryption =
  { key_vault_key_identifier; type_; managed_identity }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let key_delivery_access_control ?default_action ?ip_allow_list () :
    key_delivery_access_control =
  { default_action; ip_allow_list }

let storage_account__managed_identity ?use_system_assigned_identity
    ?user_assigned_identity_id () : storage_account__managed_identity
    =
  { use_system_assigned_identity; user_assigned_identity_id }

let storage_account ?is_primary ?(managed_identity = []) ~id () :
    storage_account =
  { id; is_primary; managed_identity }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_services_account ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?(encryption = [])
    ?(identity = []) ?(key_delivery_access_control = []) ?timeouts
    ~location ~name ~resource_group_name ~storage_account () :
    azurerm_media_services_account =
  {
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    storage_authentication_type;
    tags;
    encryption;
    identity;
    key_delivery_access_control;
    storage_account;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  storage_authentication_type : string prop;
  tags : (string * string) list prop;
}

let make ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?(encryption = [])
    ?(identity = []) ?(key_delivery_access_control = []) ?timeouts
    ~location ~name ~resource_group_name ~storage_account __id =
  let __type = "azurerm_media_services_account" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_authentication_type =
         Prop.computed __type __id "storage_authentication_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_services_account
        (azurerm_media_services_account ?id
           ?public_network_access_enabled
           ?storage_authentication_type ?tags ~encryption ~identity
           ~key_delivery_access_control ?timeouts ~location ~name
           ~resource_group_name ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?(encryption = [])
    ?(identity = []) ?(key_delivery_access_control = []) ?timeouts
    ~location ~name ~resource_group_name ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_network_access_enabled
      ?storage_authentication_type ?tags ~encryption ~identity
      ~key_delivery_access_control ?timeouts ~location ~name
      ~resource_group_name ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
