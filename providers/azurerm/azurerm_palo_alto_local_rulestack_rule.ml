(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type category = {
  custom_urls : string prop list;
  feeds : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : category) -> ()

let yojson_of_category =
  (function
   | { custom_urls = v_custom_urls; feeds = v_feeds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_feeds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "feeds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_custom_urls
         in
         ("custom_urls", arg) :: bnds
       in
       `Assoc bnds
    : category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_category

[@@@deriving.end]

type destination = {
  cidrs : string prop list option; [@option]
  countries : string prop list option; [@option]
  feeds : string prop list option; [@option]
  local_rulestack_fqdn_list_ids : string prop list option; [@option]
  local_rulestack_prefix_list_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination) -> ()

let yojson_of_destination =
  (function
   | {
       cidrs = v_cidrs;
       countries = v_countries;
       feeds = v_feeds;
       local_rulestack_fqdn_list_ids =
         v_local_rulestack_fqdn_list_ids;
       local_rulestack_prefix_list_ids =
         v_local_rulestack_prefix_list_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_local_rulestack_prefix_list_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_rulestack_prefix_list_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_rulestack_fqdn_list_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_rulestack_fqdn_list_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_feeds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "feeds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_countries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "countries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidrs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination

[@@@deriving.end]

type source = {
  cidrs : string prop list option; [@option]
  countries : string prop list option; [@option]
  feeds : string prop list option; [@option]
  local_rulestack_prefix_list_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       cidrs = v_cidrs;
       countries = v_countries;
       feeds = v_feeds;
       local_rulestack_prefix_list_ids =
         v_local_rulestack_prefix_list_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_local_rulestack_prefix_list_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_rulestack_prefix_list_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_feeds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "feeds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_countries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "countries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidrs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_palo_alto_local_rulestack_rule = {
  action : string prop;
  applications : string prop list;
  audit_comment : string prop option; [@option]
  decryption_rule_type : string prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  inspection_certificate_id : string prop option; [@option]
  logging_enabled : bool prop option; [@option]
  name : string prop;
  negate_destination : bool prop option; [@option]
  negate_source : bool prop option; [@option]
  priority : float prop;
  protocol : string prop option; [@option]
  protocol_ports : string prop list option; [@option]
  rulestack_id : string prop;
  tags : (string * string prop) list option; [@option]
  category : category list;
  destination : destination list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_palo_alto_local_rulestack_rule) -> ()

let yojson_of_azurerm_palo_alto_local_rulestack_rule =
  (function
   | {
       action = v_action;
       applications = v_applications;
       audit_comment = v_audit_comment;
       decryption_rule_type = v_decryption_rule_type;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       inspection_certificate_id = v_inspection_certificate_id;
       logging_enabled = v_logging_enabled;
       name = v_name;
       negate_destination = v_negate_destination;
       negate_source = v_negate_source;
       priority = v_priority;
       protocol = v_protocol;
       protocol_ports = v_protocol_ports;
       rulestack_id = v_rulestack_id;
       tags = v_tags;
       category = v_category;
       destination = v_destination;
       source = v_source;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_source v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination v_destination
         in
         ("destination", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_category v_category in
         ("category", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rulestack_id in
         ("rulestack_id", arg) :: bnds
       in
       let bnds =
         match v_protocol_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocol_ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         match v_negate_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_destination", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_logging_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "logging_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inspection_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inspection_certificate_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_decryption_rule_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "decryption_rule_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_comment", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_applications
         in
         ("applications", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_palo_alto_local_rulestack_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_palo_alto_local_rulestack_rule

[@@@deriving.end]

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
    ?negate_source ?protocol ?protocol_ports ?tags ?(category = [])
    ?timeouts ~action ~applications ~name ~priority ~rulestack_id
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
  tf_name : string;
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
    ?tags ?(category = []) ?timeouts ~action ~applications ~name
    ~priority ~rulestack_id ~destination ~source __id =
  let __type = "azurerm_palo_alto_local_rulestack_rule" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?protocol_ports ?tags ~category ?timeouts ~action
           ~applications ~name ~priority ~rulestack_id ~destination
           ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_comment ?decryption_rule_type
    ?description ?enabled ?id ?inspection_certificate_id
    ?logging_enabled ?negate_destination ?negate_source ?protocol
    ?protocol_ports ?tags ?(category = []) ?timeouts ~action
    ~applications ~name ~priority ~rulestack_id ~destination ~source
    __id =
  let (r : _ Tf_core.resource) =
    make ?audit_comment ?decryption_rule_type ?description ?enabled
      ?id ?inspection_certificate_id ?logging_enabled
      ?negate_destination ?negate_source ?protocol ?protocol_ports
      ?tags ~category ?timeouts ~action ~applications ~name ~priority
      ~rulestack_id ~destination ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
