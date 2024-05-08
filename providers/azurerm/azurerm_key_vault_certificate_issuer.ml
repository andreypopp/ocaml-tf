(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admin = {
  email_address : string prop;
  first_name : string prop option; [@option]
  last_name : string prop option; [@option]
  phone : string prop option; [@option]
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
         match v_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       `Assoc bnds
    : admin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin

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

type azurerm_key_vault_certificate_issuer = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop option; [@option]
  password : string prop option; [@option]
  provider_name : string prop;
  admin : admin list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_certificate_issuer) -> ()

let yojson_of_azurerm_key_vault_certificate_issuer =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
       org_id = v_org_id;
       password = v_password;
       provider_name = v_provider_name;
       admin = v_admin;
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
         if [] = v_admin then bnds
         else
           let arg = (yojson_of_list yojson_of_admin) v_admin in
           let bnd = "admin", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_name in
         ("provider_name", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_id", arg in
             bnd :: bnds
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
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_certificate_issuer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_certificate_issuer

[@@@deriving.end]

let admin ?first_name ?last_name ?phone ~email_address () : admin =
  { email_address; first_name; last_name; phone }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_certificate_issuer ?account_id ?id ?org_id
    ?password ?(admin = []) ?timeouts ~key_vault_id ~name
    ~provider_name () : azurerm_key_vault_certificate_issuer =
  {
    account_id;
    id;
    key_vault_id;
    name;
    org_id;
    password;
    provider_name;
    admin;
    timeouts;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  password : string prop;
  provider_name : string prop;
}

let make ?account_id ?id ?org_id ?password ?(admin = []) ?timeouts
    ~key_vault_id ~name ~provider_name __id =
  let __type = "azurerm_key_vault_certificate_issuer" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       password = Prop.computed __type __id "password";
       provider_name = Prop.computed __type __id "provider_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificate_issuer
        (azurerm_key_vault_certificate_issuer ?account_id ?id ?org_id
           ?password ~admin ?timeouts ~key_vault_id ~name
           ~provider_name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?org_id ?password
    ?(admin = []) ?timeouts ~key_vault_id ~name ~provider_name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?org_id ?password ~admin ?timeouts
      ~key_vault_id ~name ~provider_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
