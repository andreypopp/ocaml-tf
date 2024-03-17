(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_palo_alto_local_rulestack_fqdn_list__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_fqdn_list__timeouts *)

type azurerm_palo_alto_local_rulestack_fqdn_list = {
  audit_comment : string option; [@option]  (** audit_comment *)
  description : string option; [@option]  (** description *)
  fully_qualified_domain_names : string list;
      (** fully_qualified_domain_names *)
  name : string;  (** name *)
  rulestack_id : string;  (** rulestack_id *)
  timeouts :
    azurerm_palo_alto_local_rulestack_fqdn_list__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_fqdn_list *)

let azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
    ?description ?timeouts ~fully_qualified_domain_names ~name
    ~rulestack_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_fqdn_list"
  in
  let __resource =
    {
      audit_comment;
      description;
      fully_qualified_domain_names;
      name;
      rulestack_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list __resource);
  ()
