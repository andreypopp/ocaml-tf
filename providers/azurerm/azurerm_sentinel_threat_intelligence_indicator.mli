(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parsed_pattern__pattern_type_values = {
  value : string prop;  (** value *)
  value_type : string prop;  (** value_type *)
}

[@@@deriving.end]

type parsed_pattern = {
  pattern_type_key : string prop;  (** pattern_type_key *)
  pattern_type_values : parsed_pattern__pattern_type_values list;
      (** pattern_type_values *)
}

[@@@deriving.end]

type external_reference

val external_reference :
  ?description:string prop ->
  ?hashes:(string * string prop) list ->
  ?source_name:string prop ->
  ?url:string prop ->
  unit ->
  external_reference

type granular_marking

val granular_marking :
  ?language:string prop ->
  ?marking_ref:string prop ->
  ?selectors:string prop list ->
  unit ->
  granular_marking

type kill_chain_phase

val kill_chain_phase : ?name:string prop -> unit -> kill_chain_phase

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  display_name:string prop ->
  pattern:string prop ->
  pattern_type:string prop ->
  source:string prop ->
  validate_from_utc:string prop ->
  workspace_id:string prop ->
  external_reference:external_reference list ->
  granular_marking:granular_marking list ->
  kill_chain_phase:kill_chain_phase list ->
  unit ->
  azurerm_sentinel_threat_intelligence_indicator

val yojson_of_azurerm_sentinel_threat_intelligence_indicator :
  azurerm_sentinel_threat_intelligence_indicator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  confidence : float prop;
  created_by : string prop;
  created_on : string prop;
  defanged : bool prop;
  description : string prop;
  display_name : string prop;
  extension : string prop;
  external_id : string prop;
  external_last_updated_time_utc : string prop;
  guid : string prop;
  id : string prop;
  indicator_type : string list prop;
  language : string prop;
  last_updated_time_utc : string prop;
  object_marking_refs : string list prop;
  parsed_pattern : parsed_pattern list prop;
  pattern : string prop;
  pattern_type : string prop;
  pattern_version : string prop;
  revoked : bool prop;
  source : string prop;
  tags : string list prop;
  threat_types : string list prop;
  validate_from_utc : string prop;
  validate_until_utc : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  display_name:string prop ->
  pattern:string prop ->
  pattern_type:string prop ->
  source:string prop ->
  validate_from_utc:string prop ->
  workspace_id:string prop ->
  external_reference:external_reference list ->
  granular_marking:granular_marking list ->
  kill_chain_phase:kill_chain_phase list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  display_name:string prop ->
  pattern:string prop ->
  pattern_type:string prop ->
  source:string prop ->
  validate_from_utc:string prop ->
  workspace_id:string prop ->
  external_reference:external_reference list ->
  granular_marking:granular_marking list ->
  kill_chain_phase:kill_chain_phase list ->
  string ->
  t Tf_core.resource
