(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_certificate__timeouts *)

type azurerm_palo_alto_local_rulestack_certificate = {
  audit_comment : string prop option; [@option]  (** audit_comment *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  key_vault_certificate_id : string prop option; [@option]
      (** key_vault_certificate_id *)
  name : string prop;  (** name *)
  rulestack_id : string prop;  (** rulestack_id *)
  self_signed : bool prop option; [@option]  (** self_signed *)
  timeouts :
    azurerm_palo_alto_local_rulestack_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_certificate *)

type t = {
  audit_comment : string prop;
  description : string prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  rulestack_id : string prop;
  self_signed : bool prop;
}

let azurerm_palo_alto_local_rulestack_certificate ?audit_comment
    ?description ?id ?key_vault_certificate_id ?self_signed ?timeouts
    ~name ~rulestack_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_certificate"
  in
  let __resource =
    ({
       audit_comment;
       description;
       id;
       key_vault_certificate_id;
       name;
       rulestack_id;
       self_signed;
       timeouts;
     }
      : azurerm_palo_alto_local_rulestack_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_certificate
       __resource);
  let __resource_attributes =
    ({
       audit_comment =
         Prop.computed __resource_type __resource_id "audit_comment";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_certificate_id =
         Prop.computed __resource_type __resource_id
           "key_vault_certificate_id";
       name = Prop.computed __resource_type __resource_id "name";
       rulestack_id =
         Prop.computed __resource_type __resource_id "rulestack_id";
       self_signed =
         Prop.computed __resource_type __resource_id "self_signed";
     }
      : t)
  in
  __resource_attributes
