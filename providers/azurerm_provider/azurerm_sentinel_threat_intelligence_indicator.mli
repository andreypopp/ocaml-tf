(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_threat_intelligence_indicator__external_reference

type azurerm_sentinel_threat_intelligence_indicator__granular_marking
type azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase
type azurerm_sentinel_threat_intelligence_indicator__timeouts

type azurerm_sentinel_threat_intelligence_indicator__parsed_pattern__pattern_type_values = {
  value : string prop;  (** value *)
  value_type : string prop;  (** value_type *)
}

type azurerm_sentinel_threat_intelligence_indicator__parsed_pattern = {
  pattern_type_key : string prop;  (** pattern_type_key *)
  pattern_type_values :
    azurerm_sentinel_threat_intelligence_indicator__parsed_pattern__pattern_type_values
    list;
      (** pattern_type_values *)
}

type azurerm_sentinel_threat_intelligence_indicator

val azurerm_sentinel_threat_intelligence_indicator :
  ?confidence:float prop ->
  ?created_by:string prop ->
  ?description:string prop ->
  ?extension:string prop ->
  ?id:string prop ->
  ?language:string prop ->
  ?object_marking_refs:string prop list ->
  ?pattern_version:string prop ->
  ?revoked:bool prop ->
  ?tags:string prop list ->
  ?threat_types:string prop list ->
  ?validate_until_utc:string prop ->
  ?timeouts:azurerm_sentinel_threat_intelligence_indicator__timeouts ->
  display_name:string prop ->
  pattern:string prop ->
  pattern_type:string prop ->
  source:string prop ->
  validate_from_utc:string prop ->
  workspace_id:string prop ->
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
