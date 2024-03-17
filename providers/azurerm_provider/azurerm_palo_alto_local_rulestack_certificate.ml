(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_palo_alto_local_rulestack_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_certificate__timeouts *)

type azurerm_palo_alto_local_rulestack_certificate = {
  audit_comment : string option; [@option]  (** audit_comment *)
  description : string option; [@option]  (** description *)
  key_vault_certificate_id : string option; [@option]
      (** key_vault_certificate_id *)
  name : string;  (** name *)
  rulestack_id : string;  (** rulestack_id *)
  self_signed : bool option; [@option]  (** self_signed *)
  timeouts :
    azurerm_palo_alto_local_rulestack_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_certificate *)

let azurerm_palo_alto_local_rulestack_certificate ?audit_comment
    ?description ?key_vault_certificate_id ?self_signed ?timeouts
    ~name ~rulestack_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_certificate"
  in
  let __resource =
    {
      audit_comment;
      description;
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
