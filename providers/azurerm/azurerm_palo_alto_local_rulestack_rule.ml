(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type category = {
  custom_urls : string prop list;  (** custom_urls *)
  feeds : string prop list option; [@option]  (** feeds *)
}
[@@deriving yojson_of]
(** category *)

type destination = {
  cidrs : string prop list option; [@option]  (** cidrs *)
  countries : string prop list option; [@option]  (** countries *)
  feeds : string prop list option; [@option]  (** feeds *)
  local_rulestack_fqdn_list_ids : string prop list option; [@option]
      (** local_rulestack_fqdn_list_ids *)
  local_rulestack_prefix_list_ids : string prop list option; [@option]
      (** local_rulestack_prefix_list_ids *)
}
[@@deriving yojson_of]
(** destination *)

type source = {
  cidrs : string prop list option; [@option]  (** cidrs *)
  countries : string prop list option; [@option]  (** countries *)
  feeds : string prop list option; [@option]  (** feeds *)
  local_rulestack_prefix_list_ids : string prop list option; [@option]
      (** local_rulestack_prefix_list_ids *)
}
[@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  category : category list;
  destination : destination list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_rule *)

let category ?feeds ~custom_urls () : category =
  { custom_urls; feeds }

let destination ?cidrs ?countries ?feeds
    ?local_rulestack_fqdn_list_ids ?local_rulestack_prefix_list_ids
    () : destination =
  {
    cidrs;
    countries;
    feeds;
    local_rulestack_fqdn_list_ids;
    local_rulestack_prefix_list_ids;
  }

let source ?cidrs ?countries ?feeds ?local_rulestack_prefix_list_ids
    () : source =
  { cidrs; countries; feeds; local_rulestack_prefix_list_ids }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack_rule ?audit_comment
    ?decryption_rule_type ?description ?enabled ?id
    ?inspection_certificate_id ?logging_enabled ?negate_destination
    ?negate_source ?protocol ?protocol_ports ?tags ?timeouts ~action
    ~applications ~name ~priority ~rulestack_id ~category
    ~destination ~source () : azurerm_palo_alto_local_rulestack_rule
    =
  {
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

let make ?audit_comment ?decryption_rule_type ?description ?enabled
    ?id ?inspection_certificate_id ?logging_enabled
    ?negate_destination ?negate_source ?protocol ?protocol_ports
    ?tags ?timeouts ~action ~applications ~name ~priority
    ~rulestack_id ~category ~destination ~source __id =
  let __type = "azurerm_palo_alto_local_rulestack_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       applications = Prop.computed __type __id "applications";
       audit_comment = Prop.computed __type __id "audit_comment";
       decryption_rule_type =
         Prop.computed __type __id "decryption_rule_type";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       inspection_certificate_id =
         Prop.computed __type __id "inspection_certificate_id";
       logging_enabled = Prop.computed __type __id "logging_enabled";
       name = Prop.computed __type __id "name";
       negate_destination =
         Prop.computed __type __id "negate_destination";
       negate_source = Prop.computed __type __id "negate_source";
       priority = Prop.computed __type __id "priority";
       protocol = Prop.computed __type __id "protocol";
       protocol_ports = Prop.computed __type __id "protocol_ports";
       rulestack_id = Prop.computed __type __id "rulestack_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack_rule
        (azurerm_palo_alto_local_rulestack_rule ?audit_comment
           ?decryption_rule_type ?description ?enabled ?id
           ?inspection_certificate_id ?logging_enabled
           ?negate_destination ?negate_source ?protocol
           ?protocol_ports ?tags ?timeouts ~action ~applications
           ~name ~priority ~rulestack_id ~category ~destination
           ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_comment ?decryption_rule_type
    ?description ?enabled ?id ?inspection_certificate_id
    ?logging_enabled ?negate_destination ?negate_source ?protocol
    ?protocol_ports ?tags ?timeouts ~action ~applications ~name
    ~priority ~rulestack_id ~category ~destination ~source __id =
  let (r : _ Tf_core.resource) =
    make ?audit_comment ?decryption_rule_type ?description ?enabled
      ?id ?inspection_certificate_id ?logging_enabled
      ?negate_destination ?negate_source ?protocol ?protocol_ports
      ?tags ?timeouts ~action ~applications ~name ~priority
      ~rulestack_id ~category ~destination ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
