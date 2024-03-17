(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_threat_intelligence_indicator__external_reference

type azurerm_sentinel_threat_intelligence_indicator__granular_marking
type azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase
type azurerm_sentinel_threat_intelligence_indicator__timeouts

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

type azurerm_sentinel_threat_intelligence_indicator

val azurerm_sentinel_threat_intelligence_indicator :
  ?confidence:float ->
  ?created_by:string ->
  ?description:string ->
  ?language:string ->
  ?object_marking_refs:string list ->
  ?pattern_version:string ->
  ?revoked:bool ->
  ?tags:string list ->
  ?threat_types:string list ->
  ?validate_until_utc:string ->
  ?timeouts:azurerm_sentinel_threat_intelligence_indicator__timeouts ->
  display_name:string ->
  pattern:string ->
  pattern_type:string ->
  source:string ->
  validate_from_utc:string ->
  workspace_id:string ->
  external_reference:
    azurerm_sentinel_threat_intelligence_indicator__external_reference
    list ->
  granular_marking:
    azurerm_sentinel_threat_intelligence_indicator__granular_marking
    list ->
  kill_chain_phase:
    azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase
    list ->
  string ->
  unit
