(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~certificate_id __id =
  let __type =
    "azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association"
  in
  let __attrs =
    ({
       certificate_id = Prop.computed __type __id "certificate_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
        (azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association
           ?id ?timeouts ~certificate_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
