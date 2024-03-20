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

type azurerm_storage_encryption_scope = {
  id : string prop option; [@option]
  infrastructure_encryption_required : bool prop option; [@option]
  key_vault_key_id : string prop option; [@option]
  name : string prop;
  source : string prop;
  storage_account_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_encryption_scope) -> ()

let yojson_of_azurerm_storage_encryption_scope =
  (function
   | {
       id = v_id;
       infrastructure_encryption_required =
         v_infrastructure_encryption_required;
       key_vault_key_id = v_key_vault_key_id;
       name = v_name;
       source = v_source;
       storage_account_id = v_storage_account_id;
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
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infrastructure_encryption_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "infrastructure_encryption_required", arg in
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
       `Assoc bnds
    : azurerm_storage_encryption_scope ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_encryption_scope

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_encryption_scope ?id
    ?infrastructure_encryption_required ?key_vault_key_id ?timeouts
    ~name ~source ~storage_account_id () :
    azurerm_storage_encryption_scope =
  {
    id;
    infrastructure_encryption_required;
    key_vault_key_id;
    name;
    source;
    storage_account_id;
    timeouts;
  }

type t = {
  id : string prop;
  infrastructure_encryption_required : bool prop;
  key_vault_key_id : string prop;
  name : string prop;
  source : string prop;
  storage_account_id : string prop;
}

let make ?id ?infrastructure_encryption_required ?key_vault_key_id
    ?timeouts ~name ~source ~storage_account_id __id =
  let __type = "azurerm_storage_encryption_scope" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       infrastructure_encryption_required =
         Prop.computed __type __id
           "infrastructure_encryption_required";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       name = Prop.computed __type __id "name";
       source = Prop.computed __type __id "source";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_encryption_scope
        (azurerm_storage_encryption_scope ?id
           ?infrastructure_encryption_required ?key_vault_key_id
           ?timeouts ~name ~source ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?infrastructure_encryption_required
    ?key_vault_key_id ?timeouts ~name ~source ~storage_account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?infrastructure_encryption_required ?key_vault_key_id
      ?timeouts ~name ~source ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
