(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_threat_intelligence_indicator__external_reference = {
  description : string prop option; [@option]  (** description *)
  hashes : (string * string prop) list option; [@option]
      (** hashes *)
  id : string prop;  (** id *)
  source_name : string prop option; [@option]  (** source_name *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__external_reference *)

type azurerm_sentinel_threat_intelligence_indicator__granular_marking = {
  language : string prop option; [@option]  (** language *)
  marking_ref : string prop option; [@option]  (** marking_ref *)
  selectors : string prop list option; [@option]  (** selectors *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__granular_marking *)

type azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase = {
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__kill_chain_phase *)

type azurerm_sentinel_threat_intelligence_indicator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator__timeouts *)

type azurerm_sentinel_threat_intelligence_indicator__parsed_pattern__pattern_type_values = {
  value : string prop;  (** value *)
  value_type : string prop;  (** value_type *)
}
[@@deriving yojson_of]

type azurerm_sentinel_threat_intelligence_indicator__parsed_pattern = {
  pattern_type_key : string prop;  (** pattern_type_key *)
  pattern_type_values :
    azurerm_sentinel_threat_intelligence_indicator__parsed_pattern__pattern_type_values
    list;
      (** pattern_type_values *)
}
[@@deriving yojson_of]

type azurerm_sentinel_threat_intelligence_indicator = {
  confidence : float prop option; [@option]  (** confidence *)
  created_by : string prop option; [@option]  (** created_by *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  extension : string prop option; [@option]  (** extension *)
  id : string prop option; [@option]  (** id *)
  language : string prop option; [@option]  (** language *)
  object_marking_refs : string prop list option; [@option]
      (** object_marking_refs *)
  pattern : string prop;  (** pattern *)
  pattern_type : string prop;  (** pattern_type *)
  pattern_version : string prop option; [@option]
      (** pattern_version *)
  revoked : bool prop option; [@option]  (** revoked *)
  source : string prop;  (** source *)
  tags : string prop list option; [@option]  (** tags *)
  threat_types : string prop list option; [@option]
      (** threat_types *)
  validate_from_utc : string prop;  (** validate_from_utc *)
  validate_until_utc : string prop option; [@option]
      (** validate_until_utc *)
  workspace_id : string prop;  (** workspace_id *)
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

type t = {
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
  parsed_pattern :
    azurerm_sentinel_threat_intelligence_indicator__parsed_pattern
    list
    prop;
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

let azurerm_sentinel_threat_intelligence_indicator ?confidence
    ?created_by ?description ?extension ?id ?language
    ?object_marking_refs ?pattern_version ?revoked ?tags
    ?threat_types ?validate_until_utc ?timeouts ~display_name
    ~pattern ~pattern_type ~source ~validate_from_utc ~workspace_id
    ~external_reference ~granular_marking ~kill_chain_phase
    __resource_id =
  let __resource_type =
    "azurerm_sentinel_threat_intelligence_indicator"
  in
  let __resource =
    ({
       confidence;
       created_by;
       description;
       display_name;
       extension;
       id;
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
      : azurerm_sentinel_threat_intelligence_indicator)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_threat_intelligence_indicator
       __resource);
  let __resource_attributes =
    ({
       confidence =
         Prop.computed __resource_type __resource_id "confidence";
       created_by =
         Prop.computed __resource_type __resource_id "created_by";
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       defanged =
         Prop.computed __resource_type __resource_id "defanged";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       extension =
         Prop.computed __resource_type __resource_id "extension";
       external_id =
         Prop.computed __resource_type __resource_id "external_id";
       external_last_updated_time_utc =
         Prop.computed __resource_type __resource_id
           "external_last_updated_time_utc";
       guid = Prop.computed __resource_type __resource_id "guid";
       id = Prop.computed __resource_type __resource_id "id";
       indicator_type =
         Prop.computed __resource_type __resource_id "indicator_type";
       language =
         Prop.computed __resource_type __resource_id "language";
       last_updated_time_utc =
         Prop.computed __resource_type __resource_id
           "last_updated_time_utc";
       object_marking_refs =
         Prop.computed __resource_type __resource_id
           "object_marking_refs";
       parsed_pattern =
         Prop.computed __resource_type __resource_id "parsed_pattern";
       pattern =
         Prop.computed __resource_type __resource_id "pattern";
       pattern_type =
         Prop.computed __resource_type __resource_id "pattern_type";
       pattern_version =
         Prop.computed __resource_type __resource_id
           "pattern_version";
       revoked =
         Prop.computed __resource_type __resource_id "revoked";
       source = Prop.computed __resource_type __resource_id "source";
       tags = Prop.computed __resource_type __resource_id "tags";
       threat_types =
         Prop.computed __resource_type __resource_id "threat_types";
       validate_from_utc =
         Prop.computed __resource_type __resource_id
           "validate_from_utc";
       validate_until_utc =
         Prop.computed __resource_type __resource_id
           "validate_until_utc";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
