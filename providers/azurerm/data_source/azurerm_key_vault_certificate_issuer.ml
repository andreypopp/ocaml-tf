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

type admin = {
  email_address : string prop;
  first_name : string prop;
  last_name : string prop;
  phone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : admin) -> ()

let yojson_of_admin =
  (function
   | {
       email_address = v_email_address;
       first_name = v_first_name;
       last_name = v_last_name;
       phone = v_phone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone in
         ("phone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       `Assoc bnds
    : admin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin

[@@@deriving.end]

type azurerm_key_vault_certificate_issuer = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_certificate_issuer) -> ()

let yojson_of_azurerm_key_vault_certificate_issuer =
  (function
   | {
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
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
    : azurerm_key_vault_certificate_issuer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_certificate_issuer

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_certificate_issuer ?id ?timeouts ~key_vault_id
    ~name () : azurerm_key_vault_certificate_issuer =
  { id; key_vault_id; name; timeouts }

type t = {
  tf_name : string;
  account_id : string prop;
  admin : admin list prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  provider_name : string prop;
}

let make ?id ?timeouts ~key_vault_id ~name __id =
  let __type = "azurerm_key_vault_certificate_issuer" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       admin = Prop.computed __type __id "admin";
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       provider_name = Prop.computed __type __id "provider_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificate_issuer
        (azurerm_key_vault_certificate_issuer ?id ?timeouts
           ~key_vault_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
