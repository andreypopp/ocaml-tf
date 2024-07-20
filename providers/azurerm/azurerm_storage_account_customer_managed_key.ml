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

type azurerm_storage_account_customer_managed_key = {
  federated_identity_client_id : string prop option; [@option]
  id : string prop option; [@option]
  key_name : string prop;
  key_vault_id : string prop option; [@option]
  key_vault_uri : string prop option; [@option]
  key_version : string prop option; [@option]
  managed_hsm_key_id : string prop option; [@option]
  storage_account_id : string prop;
  user_assigned_identity_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account_customer_managed_key) -> ()

let yojson_of_azurerm_storage_account_customer_managed_key =
  (function
   | {
       federated_identity_client_id = v_federated_identity_client_id;
       id = v_id;
       key_name = v_key_name;
       key_vault_id = v_key_vault_id;
       key_vault_uri = v_key_vault_uri;
       key_version = v_key_version;
       managed_hsm_key_id = v_managed_hsm_key_id;
       storage_account_id = v_storage_account_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
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
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_managed_hsm_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_hsm_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_name in
         ("key_name", arg) :: bnds
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
         match v_federated_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "federated_identity_client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_account_customer_managed_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account_customer_managed_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account_customer_managed_key
    ?federated_identity_client_id ?id ?key_vault_id ?key_vault_uri
    ?key_version ?managed_hsm_key_id ?user_assigned_identity_id
    ?timeouts ~key_name ~storage_account_id () :
    azurerm_storage_account_customer_managed_key =
  {
    federated_identity_client_id;
    id;
    key_name;
    key_vault_id;
    key_vault_uri;
    key_version;
    managed_hsm_key_id;
    storage_account_id;
    user_assigned_identity_id;
    timeouts;
  }

type t = {
  tf_name : string;
  federated_identity_client_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_vault_uri : string prop;
  key_version : string prop;
  managed_hsm_key_id : string prop;
  storage_account_id : string prop;
  user_assigned_identity_id : string prop;
}

let make ?federated_identity_client_id ?id ?key_vault_id
    ?key_vault_uri ?key_version ?managed_hsm_key_id
    ?user_assigned_identity_id ?timeouts ~key_name
    ~storage_account_id __id =
  let __type = "azurerm_storage_account_customer_managed_key" in
  let __attrs =
    ({
       tf_name = __id;
       federated_identity_client_id =
         Prop.computed __type __id "federated_identity_client_id";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       key_vault_uri = Prop.computed __type __id "key_vault_uri";
       key_version = Prop.computed __type __id "key_version";
       managed_hsm_key_id =
         Prop.computed __type __id "managed_hsm_key_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       user_assigned_identity_id =
         Prop.computed __type __id "user_assigned_identity_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_customer_managed_key
        (azurerm_storage_account_customer_managed_key
           ?federated_identity_client_id ?id ?key_vault_id
           ?key_vault_uri ?key_version ?managed_hsm_key_id
           ?user_assigned_identity_id ?timeouts ~key_name
           ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?federated_identity_client_id ?id
    ?key_vault_id ?key_vault_uri ?key_version ?managed_hsm_key_id
    ?user_assigned_identity_id ?timeouts ~key_name
    ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?federated_identity_client_id ?id ?key_vault_id
      ?key_vault_uri ?key_version ?managed_hsm_key_id
      ?user_assigned_identity_id ?timeouts ~key_name
      ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
