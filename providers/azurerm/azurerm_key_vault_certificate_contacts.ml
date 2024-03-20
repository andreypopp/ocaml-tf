(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact = {
  email : string prop;  (** email *)
  name : string prop option; [@option]  (** name *)
  phone : string prop option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** contact *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_key_vault_certificate_contacts = {
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  contact : contact list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_contacts *)

let contact ?name ?phone ~email () : contact = { email; name; phone }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_certificate_contacts ?id ?timeouts
    ~key_vault_id ~contact () :
    azurerm_key_vault_certificate_contacts =
  { id; key_vault_id; contact; timeouts }

type t = { id : string prop; key_vault_id : string prop }

let make ?id ?timeouts ~key_vault_id ~contact __id =
  let __type = "azurerm_key_vault_certificate_contacts" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificate_contacts
        (azurerm_key_vault_certificate_contacts ?id ?timeouts
           ~key_vault_id ~contact ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_id ~contact __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_id ~contact __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
