(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_fqdn_list__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_fqdn_list__timeouts *)

type azurerm_palo_alto_local_rulestack_fqdn_list = {
  audit_comment : string prop option; [@option]  (** audit_comment *)
  description : string prop option; [@option]  (** description *)
  fully_qualified_domain_names : string prop list;
      (** fully_qualified_domain_names *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rulestack_id : string prop;  (** rulestack_id *)
  timeouts :
    azurerm_palo_alto_local_rulestack_fqdn_list__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_fqdn_list *)

type t = {
  audit_comment : string prop;
  description : string prop;
  fully_qualified_domain_names : string list prop;
  id : string prop;
  name : string prop;
  rulestack_id : string prop;
}

let azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
    ?description ?id ?timeouts ~fully_qualified_domain_names ~name
    ~rulestack_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_fqdn_list"
  in
  let __resource =
    ({
       audit_comment;
       description;
       fully_qualified_domain_names;
       id;
       name;
       rulestack_id;
       timeouts;
     }
      : azurerm_palo_alto_local_rulestack_fqdn_list)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list __resource);
  let __resource_attributes =
    ({
       audit_comment =
         Prop.computed __resource_type __resource_id "audit_comment";
       description =
         Prop.computed __resource_type __resource_id "description";
       fully_qualified_domain_names =
         Prop.computed __resource_type __resource_id
           "fully_qualified_domain_names";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rulestack_id =
         Prop.computed __resource_type __resource_id "rulestack_id";
     }
      : t)
  in
  __resource_attributes
