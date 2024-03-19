(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~key_vault_id ~contact
    __resource_id =
  let __resource_type = "azurerm_key_vault_certificate_contacts" in
  let __resource =
    azurerm_key_vault_certificate_contacts ?id ?timeouts
      ~key_vault_id ~contact ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_certificate_contacts __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
     }
      : t)
  in
  __resource_attributes
