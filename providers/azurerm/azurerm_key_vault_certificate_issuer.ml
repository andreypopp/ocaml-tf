(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admin = {
  email_address : string prop;  (** email_address *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
  phone : string prop option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** admin *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_key_vault_certificate_issuer = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  org_id : string prop option; [@option]  (** org_id *)
  password : string prop option; [@option]  (** password *)
  provider_name : string prop;  (** provider_name *)
  admin : admin list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer *)

let admin ?first_name ?last_name ?phone ~email_address () : admin =
  { email_address; first_name; last_name; phone }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_certificate_issuer ?account_id ?id ?org_id
    ?password ?timeouts ~key_vault_id ~name ~provider_name ~admin ()
    : azurerm_key_vault_certificate_issuer =
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
  account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  password : string prop;
  provider_name : string prop;
}

let make ?account_id ?id ?org_id ?password ?timeouts ~key_vault_id
    ~name ~provider_name ~admin __id =
  let __type = "azurerm_key_vault_certificate_issuer" in
  let __attrs =
    ({
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
           ?password ?timeouts ~key_vault_id ~name ~provider_name
           ~admin ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?org_id ?password ?timeouts
    ~key_vault_id ~name ~provider_name ~admin __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?org_id ?password ?timeouts ~key_vault_id
      ~name ~provider_name ~admin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
