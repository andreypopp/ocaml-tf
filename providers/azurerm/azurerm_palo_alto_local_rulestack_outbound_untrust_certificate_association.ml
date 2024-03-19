(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association = {
  certificate_id : string prop;  (** certificate_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
    ?id ?timeouts ~certificate_id () :
    azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
    =
  { certificate_id; id; timeouts }

type t = { certificate_id : string prop; id : string prop }

let register ?tf_module ?id ?timeouts ~certificate_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association"
  in
  let __resource =
    azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
      ?id ?timeouts ~certificate_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
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
