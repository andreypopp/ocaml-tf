(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_voice_services_communications_gateway__service_location = {
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
(** azurerm_voice_services_communications_gateway__service_location *)

type azurerm_voice_services_communications_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway__timeouts *)

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
  service_location :
    azurerm_voice_services_communications_gateway__service_location
    list;
  timeouts :
    azurerm_voice_services_communications_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway *)

let azurerm_voice_services_communications_gateway ?api_bridge
    ?auto_generated_domain_name_label_scope ?emergency_dial_strings
    ?id ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
    ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location ~name
    ~platforms ~resource_group_name ~service_location __resource_id =
  let __resource_type =
    "azurerm_voice_services_communications_gateway"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_voice_services_communications_gateway
       __resource);
  ()
