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

let azurerm_palo_alto_local_rulestack_certificate ?audit_comment
    ?description ?id ?key_vault_certificate_id ?self_signed ?timeouts
    ~name ~rulestack_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_certificate"
  in
  let __resource =
    {
      audit_comment;
      description;
      id;
      key_vault_certificate_id;
      name;
      rulestack_id;
      self_signed;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_certificate
       __resource);
  ()
