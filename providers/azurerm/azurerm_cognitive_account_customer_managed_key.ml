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

type azurerm_cognitive_account_customer_managed_key = {
  cognitive_account_id : string prop;
  id : string prop option; [@option]
  identity_client_id : string prop option; [@option]
  key_vault_key_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_cognitive_account_customer_managed_key) -> ()

let yojson_of_azurerm_cognitive_account_customer_managed_key =
  (function
   | {
       cognitive_account_id = v_cognitive_account_id;
       id = v_id;
       identity_client_id = v_identity_client_id;
       key_vault_key_id = v_key_vault_key_id;
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
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         match v_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_client_id", arg in
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
           yojson_of_prop yojson_of_string v_cognitive_account_id
         in
         ("cognitive_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cognitive_account_customer_managed_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cognitive_account_customer_managed_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cognitive_account_customer_managed_key ?id
    ?identity_client_id ?timeouts ~cognitive_account_id
    ~key_vault_key_id () :
    azurerm_cognitive_account_customer_managed_key =
  {
    cognitive_account_id;
    id;
    identity_client_id;
    key_vault_key_id;
    timeouts;
  }

type t = {
  cognitive_account_id : string prop;
  id : string prop;
  identity_client_id : string prop;
  key_vault_key_id : string prop;
}

let make ?id ?identity_client_id ?timeouts ~cognitive_account_id
    ~key_vault_key_id __id =
  let __type = "azurerm_cognitive_account_customer_managed_key" in
  let __attrs =
    ({
       cognitive_account_id =
         Prop.computed __type __id "cognitive_account_id";
       id = Prop.computed __type __id "id";
       identity_client_id =
         Prop.computed __type __id "identity_client_id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cognitive_account_customer_managed_key
        (azurerm_cognitive_account_customer_managed_key ?id
           ?identity_client_id ?timeouts ~cognitive_account_id
           ~key_vault_key_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?identity_client_id ?timeouts
    ~cognitive_account_id ~key_vault_key_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?identity_client_id ?timeouts ~cognitive_account_id
      ~key_vault_key_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
