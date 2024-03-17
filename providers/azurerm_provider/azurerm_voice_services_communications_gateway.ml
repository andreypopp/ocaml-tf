(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_voice_services_communications_gateway__service_location = {
  allowed_media_source_address_prefixes : string list option;
      [@option]
      (** allowed_media_source_address_prefixes *)
  allowed_signaling_source_address_prefixes : string list option;
      [@option]
      (** allowed_signaling_source_address_prefixes *)
  esrp_addresses : string list option; [@option]
      (** esrp_addresses *)
  location : string;  (** location *)
  operator_addresses : string list;  (** operator_addresses *)
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway__service_location *)

type azurerm_voice_services_communications_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway__timeouts *)

type azurerm_voice_services_communications_gateway = {
  api_bridge : string option; [@option]  (** api_bridge *)
  auto_generated_domain_name_label_scope : string option; [@option]
      (** auto_generated_domain_name_label_scope *)
  codecs : string;  (** codecs *)
  connectivity : string;  (** connectivity *)
  e911_type : string;  (** e911_type *)
  emergency_dial_strings : string list option; [@option]
      (** emergency_dial_strings *)
  location : string;  (** location *)
  microsoft_teams_voicemail_pilot_number : string option; [@option]
      (** microsoft_teams_voicemail_pilot_number *)
  name : string;  (** name *)
  on_prem_mcp_enabled : bool option; [@option]
      (** on_prem_mcp_enabled *)
  platforms : string list;  (** platforms *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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
    ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
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
