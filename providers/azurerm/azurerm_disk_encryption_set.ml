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

type azurerm_disk_encryption_set = {
  auto_key_rotation_enabled : bool prop option; [@option]
  encryption_type : string prop option; [@option]
  federated_client_id : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_key_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_disk_encryption_set) -> ()

let yojson_of_azurerm_disk_encryption_set =
  (function
   | {
       auto_key_rotation_enabled = v_auto_key_rotation_enabled;
       encryption_type = v_encryption_type;
       federated_client_id = v_federated_client_id;
       id = v_id;
       key_vault_key_id = v_key_vault_key_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       identity = v_identity;
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
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
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
         match v_federated_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "federated_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_key_rotation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_key_rotation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_disk_encryption_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_disk_encryption_set

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_disk_encryption_set ?auto_key_rotation_enabled
    ?encryption_type ?federated_client_id ?id ?tags ?timeouts
    ~key_vault_key_id ~location ~name ~resource_group_name ~identity
    () : azurerm_disk_encryption_set =
  {
    auto_key_rotation_enabled;
    encryption_type;
    federated_client_id;
    id;
    key_vault_key_id;
    location;
    name;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_key_rotation_enabled : bool prop;
  encryption_type : string prop;
  federated_client_id : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  key_vault_key_url : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?auto_key_rotation_enabled ?encryption_type
    ?federated_client_id ?id ?tags ?timeouts ~key_vault_key_id
    ~location ~name ~resource_group_name ~identity __id =
  let __type = "azurerm_disk_encryption_set" in
  let __attrs =
    ({
       tf_name = __id;
       auto_key_rotation_enabled =
         Prop.computed __type __id "auto_key_rotation_enabled";
       encryption_type = Prop.computed __type __id "encryption_type";
       federated_client_id =
         Prop.computed __type __id "federated_client_id";
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       key_vault_key_url =
         Prop.computed __type __id "key_vault_key_url";
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
      yojson_of_azurerm_disk_encryption_set
        (azurerm_disk_encryption_set ?auto_key_rotation_enabled
           ?encryption_type ?federated_client_id ?id ?tags ?timeouts
           ~key_vault_key_id ~location ~name ~resource_group_name
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_key_rotation_enabled ?encryption_type
    ?federated_client_id ?id ?tags ?timeouts ~key_vault_key_id
    ~location ~name ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?auto_key_rotation_enabled ?encryption_type
      ?federated_client_id ?id ?tags ?timeouts ~key_vault_key_id
      ~location ~name ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
