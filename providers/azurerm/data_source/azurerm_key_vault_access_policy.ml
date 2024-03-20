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

type azurerm_key_vault_access_policy = {
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_access_policy) -> ()

let yojson_of_azurerm_key_vault_access_policy =
  (function
   | { id = v_id; name = v_name; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
    : azurerm_key_vault_access_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_access_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_access_policy ?id ?timeouts ~name () :
    azurerm_key_vault_access_policy =
  { id; name; timeouts }

type t = {
  certificate_permissions : string list prop;
  id : string prop;
  key_permissions : string list prop;
  name : string prop;
  secret_permissions : string list prop;
}

let make ?id ?timeouts ~name __id =
  let __type = "azurerm_key_vault_access_policy" in
  let __attrs =
    ({
       certificate_permissions =
         Prop.computed __type __id "certificate_permissions";
       id = Prop.computed __type __id "id";
       key_permissions = Prop.computed __type __id "key_permissions";
       name = Prop.computed __type __id "name";
       secret_permissions =
         Prop.computed __type __id "secret_permissions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_access_policy
        (azurerm_key_vault_access_policy ?id ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
