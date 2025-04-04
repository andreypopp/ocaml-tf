(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type key_vault_reference = { id : string prop; url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_reference) -> ()

let yojson_of_key_vault_reference =
  (function
   | { id = v_id; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_reference

[@@@deriving.end]

type network_profile__account_access__ip_rule = {
  action : string prop option; [@option]
  ip_range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__account_access__ip_rule) -> ()

let yojson_of_network_profile__account_access__ip_rule =
  (function
   | { action = v_action; ip_range = v_ip_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile__account_access__ip_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__account_access__ip_rule

[@@@deriving.end]

type network_profile__account_access = {
  default_action : string prop option; [@option]
  ip_rule : network_profile__account_access__ip_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__account_access) -> ()

let yojson_of_network_profile__account_access =
  (function
   | { default_action = v_default_action; ip_rule = v_ip_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_profile__account_access__ip_rule)
               v_ip_rule
           in
           let bnd = "ip_rule", arg in
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
    : network_profile__account_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__account_access

[@@@deriving.end]

type network_profile__node_management_access__ip_rule = {
  action : string prop option; [@option]
  ip_range : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : network_profile__node_management_access__ip_rule) -> ()

let yojson_of_network_profile__node_management_access__ip_rule =
  (function
   | { action = v_action; ip_range = v_ip_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile__node_management_access__ip_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__node_management_access__ip_rule

[@@@deriving.end]

type network_profile__node_management_access = {
  default_action : string prop option; [@option]
  ip_rule : network_profile__node_management_access__ip_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__node_management_access) -> ()

let yojson_of_network_profile__node_management_access =
  (function
   | { default_action = v_default_action; ip_rule = v_ip_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_profile__node_management_access__ip_rule)
               v_ip_rule
           in
           let bnd = "ip_rule", arg in
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
    : network_profile__node_management_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__node_management_access

[@@@deriving.end]

type network_profile = {
  account_access : network_profile__account_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_management_access :
    network_profile__node_management_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       account_access = v_account_access;
       node_management_access = v_node_management_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_node_management_access then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_profile__node_management_access)
               v_node_management_access
           in
           let bnd = "node_management_access", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_account_access then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_profile__account_access)
               v_account_access
           in
           let bnd = "account_access", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

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

type encryption = { key_vault_key_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | { key_vault_key_id = v_key_vault_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type azurerm_batch_account = {
  allowed_authentication_modes : string prop list option; [@option]
  encryption : encryption list option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  pool_allocation_mode : string prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  storage_account_authentication_mode : string prop option; [@option]
  storage_account_id : string prop option; [@option]
  storage_account_node_identity : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_vault_reference : key_vault_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_profile : network_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_account) -> ()

let yojson_of_azurerm_batch_account =
  (function
   | {
       allowed_authentication_modes = v_allowed_authentication_modes;
       encryption = v_encryption;
       id = v_id;
       location = v_location;
       name = v_name;
       pool_allocation_mode = v_pool_allocation_mode;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       storage_account_authentication_mode =
         v_storage_account_authentication_mode;
       storage_account_id = v_storage_account_id;
       storage_account_node_identity =
         v_storage_account_node_identity;
       tags = v_tags;
       identity = v_identity;
       key_vault_reference = v_key_vault_reference;
       network_profile = v_network_profile;
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
         if Stdlib.( = ) [] v_network_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_profile)
               v_network_profile
           in
           let bnd = "network_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_vault_reference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_key_vault_reference)
               v_key_vault_reference
           in
           let bnd = "key_vault_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_node_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_node_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_authentication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_authentication_mode", arg in
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
         match v_pool_allocation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pool_allocation_mode", arg in
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
       let bnds =
         match v_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_encryption v in
             let bnd = "encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_authentication_modes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_authentication_modes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_batch_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_batch_account

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let key_vault_reference ~id ~url () : key_vault_reference =
  { id; url }

let network_profile__account_access__ip_rule ?action ~ip_range () :
    network_profile__account_access__ip_rule =
  { action; ip_range }

let network_profile__account_access ?default_action ?(ip_rule = [])
    () : network_profile__account_access =
  { default_action; ip_rule }

let network_profile__node_management_access__ip_rule ?action
    ~ip_range () : network_profile__node_management_access__ip_rule =
  { action; ip_range }

let network_profile__node_management_access ?default_action
    ?(ip_rule = []) () : network_profile__node_management_access =
  { default_action; ip_rule }

let network_profile ?(account_access = [])
    ?(node_management_access = []) () : network_profile =
  { account_access; node_management_access }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_account ?allowed_authentication_modes ?encryption
    ?id ?pool_allocation_mode ?public_network_access_enabled
    ?storage_account_authentication_mode ?storage_account_id
    ?storage_account_node_identity ?tags ?(identity = [])
    ?(key_vault_reference = []) ?(network_profile = []) ?timeouts
    ~location ~name ~resource_group_name () : azurerm_batch_account =
  {
    allowed_authentication_modes;
    encryption;
    id;
    location;
    name;
    pool_allocation_mode;
    public_network_access_enabled;
    resource_group_name;
    storage_account_authentication_mode;
    storage_account_id;
    storage_account_node_identity;
    tags;
    identity;
    key_vault_reference;
    network_profile;
    timeouts;
  }

type t = {
  tf_name : string;
  account_endpoint : string prop;
  allowed_authentication_modes : string list prop;
  encryption : encryption list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_allocation_mode : string prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  storage_account_authentication_mode : string prop;
  storage_account_id : string prop;
  storage_account_node_identity : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?allowed_authentication_modes ?encryption ?id
    ?pool_allocation_mode ?public_network_access_enabled
    ?storage_account_authentication_mode ?storage_account_id
    ?storage_account_node_identity ?tags ?(identity = [])
    ?(key_vault_reference = []) ?(network_profile = []) ?timeouts
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_batch_account" in
  let __attrs =
    ({
       tf_name = __id;
       account_endpoint =
         Prop.computed __type __id "account_endpoint";
       allowed_authentication_modes =
         Prop.computed __type __id "allowed_authentication_modes";
       encryption = Prop.computed __type __id "encryption";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pool_allocation_mode =
         Prop.computed __type __id "pool_allocation_mode";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       storage_account_authentication_mode =
         Prop.computed __type __id
           "storage_account_authentication_mode";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_node_identity =
         Prop.computed __type __id "storage_account_node_identity";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_account
        (azurerm_batch_account ?allowed_authentication_modes
           ?encryption ?id ?pool_allocation_mode
           ?public_network_access_enabled
           ?storage_account_authentication_mode ?storage_account_id
           ?storage_account_node_identity ?tags ~identity
           ~key_vault_reference ~network_profile ?timeouts ~location
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_authentication_modes ?encryption ?id
    ?pool_allocation_mode ?public_network_access_enabled
    ?storage_account_authentication_mode ?storage_account_id
    ?storage_account_node_identity ?tags ?(identity = [])
    ?(key_vault_reference = []) ?(network_profile = []) ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_authentication_modes ?encryption ?id
      ?pool_allocation_mode ?public_network_access_enabled
      ?storage_account_authentication_mode ?storage_account_id
      ?storage_account_node_identity ?tags ~identity
      ~key_vault_reference ~network_profile ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
