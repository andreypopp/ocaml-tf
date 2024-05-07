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

type azurerm_batch_account = {
  encryption : encryption list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_account) -> ()

let yojson_of_azurerm_batch_account =
  (function
   | {
       encryption = v_encryption;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         match v_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_encryption v in
             let bnd = "encryption", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_batch_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_batch_account

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_batch_account ?encryption ?id ?timeouts ~name
    ~resource_group_name () : azurerm_batch_account =
  { encryption; id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  account_endpoint : string prop;
  encryption : encryption list prop;
  id : string prop;
  key_vault_reference : key_vault_reference list prop;
  location : string prop;
  name : string prop;
  pool_allocation_mode : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
}

let make ?encryption ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_batch_account" in
  let __attrs =
    ({
       tf_name = __id;
       account_endpoint =
         Prop.computed __type __id "account_endpoint";
       encryption = Prop.computed __type __id "encryption";
       id = Prop.computed __type __id "id";
       key_vault_reference =
         Prop.computed __type __id "key_vault_reference";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pool_allocation_mode =
         Prop.computed __type __id "pool_allocation_mode";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_account
        (azurerm_batch_account ?encryption ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption ?id ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?encryption ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
