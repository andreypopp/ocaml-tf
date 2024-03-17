(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_rule__category = {
  custom_urls : string list;  (** custom_urls *)
  feeds : string list option; [@option]  (** feeds *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__category *)

type azurerm_palo_alto_local_rulestack_rule__destination = {
  cidrs : string list option; [@option]  (** cidrs *)
  countries : string list option; [@option]  (** countries *)
  feeds : string list option; [@option]  (** feeds *)
  local_rulestack_fqdn_list_ids : string list option; [@option]
      (** local_rulestack_fqdn_list_ids *)
  local_rulestack_prefix_list_ids : string list option; [@option]
      (** local_rulestack_prefix_list_ids *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__destination *)

type azurerm_palo_alto_local_rulestack_rule__source = {
  cidrs : string list option; [@option]  (** cidrs *)
  countries : string list option; [@option]  (** countries *)
  feeds : string list option; [@option]  (** feeds *)
  local_rulestack_prefix_list_ids : string list option; [@option]
      (** local_rulestack_prefix_list_ids *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__source *)

type azurerm_palo_alto_local_rulestack_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule__timeouts *)

type azurerm_palo_alto_local_rulestack_rule = {
  action : string;  (** action *)
  applications : string list;  (** applications *)
  audit_comment : string option; [@option]  (** audit_comment *)
  decryption_rule_type : string option; [@option]
      (** decryption_rule_type *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  inspection_certificate_id : string option; [@option]
      (** inspection_certificate_id *)
  logging_enabled : bool option; [@option]  (** logging_enabled *)
  name : string;  (** name *)
  negate_destination : bool option; [@option]
      (** negate_destination *)
  negate_source : bool option; [@option]  (** negate_source *)
  priority : float;  (** priority *)
  protocol : string option; [@option]  (** protocol *)
  protocol_ports : string list option; [@option]
      (** protocol_ports *)
  rulestack_id : string;  (** rulestack_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  category : azurerm_palo_alto_local_rulestack_rule__category list;
  destination :
    azurerm_palo_alto_local_rulestack_rule__destination list;
  source : azurerm_palo_alto_local_rulestack_rule__source list;
  timeouts : azurerm_palo_alto_local_rulestack_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule *)

let azurerm_palo_alto_local_rulestack_rule ?audit_comment
    ?decryption_rule_type ?description ?enabled
    ?inspection_certificate_id ?logging_enabled ?negate_destination
    ?negate_source ?protocol ?protocol_ports ?tags ?timeouts ~action
    ~applications ~name ~priority ~rulestack_id ~category
    ~destination ~source __resource_id =
  let __resource_type = "azurerm_palo_alto_local_rulestack_rule" in
  let __resource =
    {
      action;
      applications;
      audit_comment;
      decryption_rule_type;
      description;
      enabled;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack_rule __resource);
  ()
