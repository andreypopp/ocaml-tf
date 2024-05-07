(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_storage_encryption_scope = {
  id : string prop option; [@option]
  name : string prop;
  storage_account_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_encryption_scope) -> ()

let yojson_of_azurerm_storage_encryption_scope =
  (function
   | {
       id = v_id;
       name = v_name;
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
       `Assoc bnds
    : azurerm_storage_encryption_scope ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_encryption_scope

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_encryption_scope ?id ?timeouts ~name
    ~storage_account_id () : azurerm_storage_encryption_scope =
  { id; name; storage_account_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  key_vault_key_id : string prop;
  name : string prop;
  source : string prop;
  storage_account_id : string prop;
}

let make ?id ?timeouts ~name ~storage_account_id __id =
  let __type = "azurerm_storage_encryption_scope" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
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
        (azurerm_storage_encryption_scope ?id ?timeouts ~name
           ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~storage_account_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~storage_account_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
