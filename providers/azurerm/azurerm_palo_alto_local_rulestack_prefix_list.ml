(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_prefix_list__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_prefix_list__timeouts *)

type azurerm_palo_alto_local_rulestack_prefix_list = {
  audit_comment : string prop option; [@option]  (** audit_comment *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  prefix_list : string prop list;  (** prefix_list *)
  rulestack_id : string prop;  (** rulestack_id *)
  timeouts :
    azurerm_palo_alto_local_rulestack_prefix_list__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_prefix_list *)

type t = {
  audit_comment : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  prefix_list : string list prop;
  rulestack_id : string prop;
}

let azurerm_palo_alto_local_rulestack_prefix_list ?audit_comment
    ?description ?id ?timeouts ~name ~prefix_list ~rulestack_id
    __resource_id =
  let __resource_type =
    "azurerm_palo_alto_local_rulestack_prefix_list"
  in
  let __resource =
    ({
       audit_comment;
       description;
       id;
       name;
       prefix_list;
       rulestack_id;
       timeouts;
     }
      : azurerm_palo_alto_local_rulestack_prefix_list)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_prefix_list
       __resource);
  let __resource_attributes =
    ({
       audit_comment =
         Prop.computed __resource_type __resource_id "audit_comment";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       prefix_list =
         Prop.computed __resource_type __resource_id "prefix_list";
       rulestack_id =
         Prop.computed __resource_type __resource_id "rulestack_id";
     }
      : t)
  in
  __resource_attributes
