(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association__timeouts *)

type azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association = {
  certificate_id : string prop;  (** certificate_id *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association *)

type t = { certificate_id : string prop; id : string prop }

let azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association
    ?id ?timeouts ~certificate_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association"
  in
  let __resource =
    ({ certificate_id; id; timeouts }
      : azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association
       __resource);
  let __resource_attributes =
    ({
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
