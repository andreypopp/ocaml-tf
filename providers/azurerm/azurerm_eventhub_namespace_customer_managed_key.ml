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

type azurerm_eventhub_namespace_customer_managed_key = {
  eventhub_namespace_id : string prop;
  id : string prop option; [@option]
  infrastructure_encryption_enabled : bool prop option; [@option]
  key_vault_key_ids : string prop list;
  user_assigned_identity_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_eventhub_namespace_customer_managed_key) -> ()

let yojson_of_azurerm_eventhub_namespace_customer_managed_key =
  (function
   | {
       eventhub_namespace_id = v_eventhub_namespace_id;
       id = v_id;
       infrastructure_encryption_enabled =
         v_infrastructure_encryption_enabled;
       key_vault_key_ids = v_key_vault_key_ids;
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_key_vault_key_ids
         in
         ("key_vault_key_ids", arg) :: bnds
       in
       let bnds =
         match v_infrastructure_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "infrastructure_encryption_enabled", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_eventhub_namespace_id
         in
         ("eventhub_namespace_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_eventhub_namespace_customer_managed_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventhub_namespace_customer_managed_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_namespace_customer_managed_key ?id
    ?infrastructure_encryption_enabled ?user_assigned_identity_id
    ?timeouts ~eventhub_namespace_id ~key_vault_key_ids () :
    azurerm_eventhub_namespace_customer_managed_key =
  {
    eventhub_namespace_id;
    id;
    infrastructure_encryption_enabled;
    key_vault_key_ids;
    user_assigned_identity_id;
    timeouts;
  }

type t = {
  tf_name : string;
  eventhub_namespace_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  key_vault_key_ids : string list prop;
  user_assigned_identity_id : string prop;
}

let make ?id ?infrastructure_encryption_enabled
    ?user_assigned_identity_id ?timeouts ~eventhub_namespace_id
    ~key_vault_key_ids __id =
  let __type = "azurerm_eventhub_namespace_customer_managed_key" in
  let __attrs =
    ({
       tf_name = __id;
       eventhub_namespace_id =
         Prop.computed __type __id "eventhub_namespace_id";
       id = Prop.computed __type __id "id";
       infrastructure_encryption_enabled =
         Prop.computed __type __id
           "infrastructure_encryption_enabled";
       key_vault_key_ids =
         Prop.computed __type __id "key_vault_key_ids";
       user_assigned_identity_id =
         Prop.computed __type __id "user_assigned_identity_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace_customer_managed_key
        (azurerm_eventhub_namespace_customer_managed_key ?id
           ?infrastructure_encryption_enabled
           ?user_assigned_identity_id ?timeouts
           ~eventhub_namespace_id ~key_vault_key_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?infrastructure_encryption_enabled
    ?user_assigned_identity_id ?timeouts ~eventhub_namespace_id
    ~key_vault_key_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?infrastructure_encryption_enabled
      ?user_assigned_identity_id ?timeouts ~eventhub_namespace_id
      ~key_vault_key_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
