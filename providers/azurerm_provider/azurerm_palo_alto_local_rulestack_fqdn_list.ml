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

let azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
    ?description ?id ?timeouts ~fully_qualified_domain_names ~name
    ~rulestack_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_fqdn_list"
  in
  let __resource =
    {
      audit_comment;
      description;
      fully_qualified_domain_names;
      id;
      name;
      rulestack_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list __resource);
  ()
