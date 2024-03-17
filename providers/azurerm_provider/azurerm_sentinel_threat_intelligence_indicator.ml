(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sentinel_threat_intelligence_indicator__external_reference = {
  description : string option; [@option]  (** description *)
  hashes : (string * string) list option; [@option]  (** hashes *)
  id : string;  (** id *)
  source_name : string option; [@option]  (** source_name *)
  url : string option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__external_reference *)

type azurerm_sentinel_threat_intelligence_indicator__granular_marking = {
  language : string option; [@option]  (** language *)
  marking_ref : string option; [@option]  (** marking_ref *)
  selectors : string list option; [@option]  (** selectors *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__granular_marking *)

type azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase = {
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase *)

type azurerm_sentinel_threat_intelligence_indicator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__timeouts *)

type azurerm_sentinel_threat_intelligence_indicator__parsed_pattern__pattern_type_values = {
  value : string;  (** value *)
  value_type : string;  (** value_type *)
}
[@@deriving yojson_of]

type azurerm_sentinel_threat_intelligence_indicator__parsed_pattern = {
  pattern_type_key : string;  (** pattern_type_key *)
  pattern_type_values :
    azurerm_sentinel_threat_intelligence_indicator__parsed_pattern__pattern_type_values
    list;
      (** pattern_type_values *)
}
[@@deriving yojson_of]

type azurerm_sentinel_threat_intelligence_indicator = {
  confidence : float option; [@option]  (** confidence *)
  created_by : string option; [@option]  (** created_by *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  language : string option; [@option]  (** language *)
  object_marking_refs : string list option; [@option]
      (** object_marking_refs *)
  pattern : string;  (** pattern *)
  pattern_type : string;  (** pattern_type *)
  pattern_version : string option; [@option]  (** pattern_version *)
  revoked : bool option; [@option]  (** revoked *)
  source : string;  (** source *)
  tags : string list option; [@option]  (** tags *)
  threat_types : string list option; [@option]  (** threat_types *)
  validate_from_utc : string;  (** validate_from_utc *)
  validate_until_utc : string option; [@option]
      (** validate_until_utc *)
  workspace_id : string;  (** workspace_id *)
  external_reference :
    azurerm_sentinel_threat_intelligence_indicator__external_reference
    list;
  granular_marking :
    azurerm_sentinel_threat_intelligence_indicator__granular_marking
    list;
  kill_chain_phase :
    azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase
    list;
  timeouts :
    azurerm_sentinel_threat_intelligence_indicator__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator *)

let azurerm_sentinel_threat_intelligence_indicator ?confidence
    ?created_by ?description ?language ?object_marking_refs
    ?pattern_version ?revoked ?tags ?threat_types ?validate_until_utc
    ?timeouts ~display_name ~pattern ~pattern_type ~source
    ~validate_from_utc ~workspace_id ~external_reference
    ~granular_marking ~kill_chain_phase __resource_id =
  let __resource_type =
    "azurerm_sentinel_threat_intelligence_indicator"
  in
  let __resource =
    {
      confidence;
      created_by;
      description;
      display_name;
      language;
      object_marking_refs;
      pattern;
      pattern_type;
      pattern_version;
      revoked;
      source;
      tags;
      threat_types;
      validate_from_utc;
      validate_until_utc;
      workspace_id;
      external_reference;
      granular_marking;
      kill_chain_phase;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_threat_intelligence_indicator
       __resource);
  ()
