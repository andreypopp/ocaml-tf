(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type service_location = {
  allowed_media_source_address_prefixes : string prop list option;
      [@option]
      (** allowed_media_source_address_prefixes *)
  allowed_signaling_source_address_prefixes :
    string prop list option;
      [@option]
      (** allowed_signaling_source_address_prefixes *)
  esrp_addresses : string prop list option; [@option]
      (** esrp_addresses *)
  location : string prop;  (** location *)
  operator_addresses : string prop list;  (** operator_addresses *)
}
[@@deriving yojson_of]
(** service_location *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_voice_services_communications_gateway = {
  api_bridge : string prop option; [@option]  (** api_bridge *)
  auto_generated_domain_name_label_scope : string prop option;
      [@option]
      (** auto_generated_domain_name_label_scope *)
  codecs : string prop;  (** codecs *)
  connectivity : string prop;  (** connectivity *)
  e911_type : string prop;  (** e911_type *)
  emergency_dial_strings : string prop list option; [@option]
      (** emergency_dial_strings *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  microsoft_teams_voicemail_pilot_number : string prop option;
      [@option]
      (** microsoft_teams_voicemail_pilot_number *)
  name : string prop;  (** name *)
  on_prem_mcp_enabled : bool prop option; [@option]
      (** on_prem_mcp_enabled *)
  platforms : string prop list;  (** platforms *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  service_location : service_location list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway *)

let service_location ?allowed_media_source_address_prefixes
    ?allowed_signaling_source_address_prefixes ?esrp_addresses
    ~location ~operator_addresses () : service_location =
  {
    allowed_media_source_address_prefixes;
    allowed_signaling_source_address_prefixes;
    esrp_addresses;
    location;
    operator_addresses;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_voice_services_communications_gateway ?api_bridge
    ?auto_generated_domain_name_label_scope ?emergency_dial_strings
    ?id ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
    ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location ~name
    ~platforms ~resource_group_name ~service_location () :
    azurerm_voice_services_communications_gateway =
  {
    api_bridge;
    auto_generated_domain_name_label_scope;
    codecs;
    connectivity;
    e911_type;
    emergency_dial_strings;
    id;
    location;
    microsoft_teams_voicemail_pilot_number;
    name;
    on_prem_mcp_enabled;
    platforms;
    resource_group_name;
    tags;
    service_location;
    timeouts;
  }

type t = {
  api_bridge : string prop;
  auto_generated_domain_name_label_scope : string prop;
  codecs : string prop;
  connectivity : string prop;
  e911_type : string prop;
  emergency_dial_strings : string list prop;
  id : string prop;
  location : string prop;
  microsoft_teams_voicemail_pilot_number : string prop;
  name : string prop;
  on_prem_mcp_enabled : bool prop;
  platforms : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?api_bridge
    ?auto_generated_domain_name_label_scope ?emergency_dial_strings
    ?id ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
    ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location ~name
    ~platforms ~resource_group_name ~service_location __resource_id =
  let __resource_type =
    "azurerm_voice_services_communications_gateway"
  in
  let __resource =
    azurerm_voice_services_communications_gateway ?api_bridge
      ?auto_generated_domain_name_label_scope ?emergency_dial_strings
      ?id ?microsoft_teams_voicemail_pilot_number
      ?on_prem_mcp_enabled ?tags ?timeouts ~codecs ~connectivity
      ~e911_type ~location ~name ~platforms ~resource_group_name
      ~service_location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_voice_services_communications_gateway
       __resource);
  let __resource_attributes =
    ({
       api_bridge =
         Prop.computed __resource_type __resource_id "api_bridge";
       auto_generated_domain_name_label_scope =
         Prop.computed __resource_type __resource_id
           "auto_generated_domain_name_label_scope";
       codecs = Prop.computed __resource_type __resource_id "codecs";
       connectivity =
         Prop.computed __resource_type __resource_id "connectivity";
       e911_type =
         Prop.computed __resource_type __resource_id "e911_type";
       emergency_dial_strings =
         Prop.computed __resource_type __resource_id
           "emergency_dial_strings";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       microsoft_teams_voicemail_pilot_number =
         Prop.computed __resource_type __resource_id
           "microsoft_teams_voicemail_pilot_number";
       name = Prop.computed __resource_type __resource_id "name";
       on_prem_mcp_enabled =
         Prop.computed __resource_type __resource_id
           "on_prem_mcp_enabled";
       platforms =
         Prop.computed __resource_type __resource_id "platforms";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
