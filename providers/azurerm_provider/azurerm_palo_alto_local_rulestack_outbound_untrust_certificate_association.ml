(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association__timeouts *)

type azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association = {
  certificate_id : string;  (** certificate_id *)
  timeouts :
    azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association *)

let azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
    ?timeouts ~certificate_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association"
  in
  let __resource = { certificate_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
       __resource);
  ()
