(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_rule__category = {
  custom_urls : string prop list;  (** custom_urls *)
  feeds : string prop list option; [@option]  (** feeds *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__category *)

type azurerm_palo_alto_local_rulestack_rule__destination = {
  cidrs : string prop list option; [@option]  (** cidrs *)
  countries : string prop list option; [@option]  (** countries *)
  feeds : string prop list option; [@option]  (** feeds *)
  local_rulestack_fqdn_list_ids : string prop list option; [@option]
      (** local_rulestack_fqdn_list_ids *)
  local_rulestack_prefix_list_ids : string prop list option; [@option]
      (** local_rulestack_prefix_list_ids *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__destination *)

type azurerm_palo_alto_local_rulestack_rule__source = {
  cidrs : string prop list option; [@option]  (** cidrs *)
  countries : string prop list option; [@option]  (** countries *)
  feeds : string prop list option; [@option]  (** feeds *)
  local_rulestack_prefix_list_ids : string prop list option; [@option]
      (** local_rulestack_prefix_list_ids *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__source *)

type azurerm_palo_alto_local_rulestack_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__timeouts *)

type azurerm_palo_alto_local_rulestack_rule = {
  action : string prop;  (** action *)
  applications : string prop list;  (** applications *)
  audit_comment : string prop option; [@option]  (** audit_comment *)
  decryption_rule_type : string prop option; [@option]
      (** decryption_rule_type *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  inspection_certificate_id : string prop option; [@option]
      (** inspection_certificate_id *)
  logging_enabled : bool prop option; [@option]
      (** logging_enabled *)
  name : string prop;  (** name *)
  negate_destination : bool prop option; [@option]
      (** negate_destination *)
  negate_source : bool prop option; [@option]  (** negate_source *)
  priority : float prop;  (** priority *)
  protocol : string prop option; [@option]  (** protocol *)
  protocol_ports : string prop list option; [@option]
      (** protocol_ports *)
  rulestack_id : string prop;  (** rulestack_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  category : azurerm_palo_alto_local_rulestack_rule__category list;
  destination :
    azurerm_palo_alto_local_rulestack_rule__destination list;
  source : azurerm_palo_alto_local_rulestack_rule__source list;
  timeouts : azurerm_palo_alto_local_rulestack_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule *)

type t = {
  action : string prop;
  applications : string list prop;
  audit_comment : string prop;
  decryption_rule_type : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  inspection_certificate_id : string prop;
  logging_enabled : bool prop;
  name : string prop;
  negate_destination : bool prop;
  negate_source : bool prop;
  priority : float prop;
  protocol : string prop;
  protocol_ports : string list prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

let azurerm_palo_alto_local_rulestack_rule ?audit_comment
    ?decryption_rule_type ?description ?enabled ?id
    ?inspection_certificate_id ?logging_enabled ?negate_destination
    ?negate_source ?protocol ?protocol_ports ?tags ?timeouts ~action
    ~applications ~name ~priority ~rulestack_id ~category
    ~destination ~source __resource_id =
  let __resource_type = "azurerm_palo_alto_local_rulestack_rule" in
  let __resource =
    ({
       action;
       applications;
       audit_comment;
       decryption_rule_type;
       description;
       enabled;
       id;
       inspection_certificate_id;
       logging_enabled;
       name;
       negate_destination;
       negate_source;
       priority;
       protocol;
       protocol_ports;
       rulestack_id;
       tags;
       category;
       destination;
       source;
       timeouts;
     }
      : azurerm_palo_alto_local_rulestack_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_rule __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       applications =
         Prop.computed __resource_type __resource_id "applications";
       audit_comment =
         Prop.computed __resource_type __resource_id "audit_comment";
       decryption_rule_type =
         Prop.computed __resource_type __resource_id
           "decryption_rule_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       inspection_certificate_id =
         Prop.computed __resource_type __resource_id
           "inspection_certificate_id";
       logging_enabled =
         Prop.computed __resource_type __resource_id
           "logging_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       negate_destination =
         Prop.computed __resource_type __resource_id
           "negate_destination";
       negate_source =
         Prop.computed __resource_type __resource_id "negate_source";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       protocol_ports =
         Prop.computed __resource_type __resource_id "protocol_ports";
       rulestack_id =
         Prop.computed __resource_type __resource_id "rulestack_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
