(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_reference = {
  description : string prop option; [@option]  (** description *)
  hashes : (string * string prop) list option; [@option]
      (** hashes *)
  source_name : string prop option; [@option]  (** source_name *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** external_reference *)

type granular_marking = {
  language : string prop option; [@option]  (** language *)
  marking_ref : string prop option; [@option]  (** marking_ref *)
  selectors : string prop list option; [@option]  (** selectors *)
}
[@@deriving yojson_of]
(** granular_marking *)

type kill_chain_phase = {
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** kill_chain_phase *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type parsed_pattern__pattern_type_values = {
  value : string prop;  (** value *)
  value_type : string prop;  (** value_type *)
}
[@@deriving yojson_of]

type parsed_pattern = {
  pattern_type_key : string prop;  (** pattern_type_key *)
  pattern_type_values : parsed_pattern__pattern_type_values list;
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
  external_reference : external_reference list;
  granular_marking : granular_marking list;
  kill_chain_phase : kill_chain_phase list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_threat_intelligence_indicator *)

let external_reference ?description ?hashes ?source_name ?url () :
    external_reference =
  { description; hashes; source_name; url }

let granular_marking ?language ?marking_ref ?selectors () :
    granular_marking =
  { language; marking_ref; selectors }

let kill_chain_phase ?name () : kill_chain_phase = { name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_threat_intelligence_indicator ?confidence
    ?created_by ?description ?extension ?id ?language
    ?object_marking_refs ?pattern_version ?revoked ?tags
    ?threat_types ?validate_until_utc ?timeouts ~display_name
    ~pattern ~pattern_type ~source ~validate_from_utc ~workspace_id
    ~external_reference ~granular_marking ~kill_chain_phase () :
    azurerm_sentinel_threat_intelligence_indicator =
  {
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

let make ?confidence ?created_by ?description ?extension ?id
    ?language ?object_marking_refs ?pattern_version ?revoked ?tags
    ?threat_types ?validate_until_utc ?timeouts ~display_name
    ~pattern ~pattern_type ~source ~validate_from_utc ~workspace_id
    ~external_reference ~granular_marking ~kill_chain_phase __id =
  let __type = "azurerm_sentinel_threat_intelligence_indicator" in
  let __attrs =
    ({
       confidence = Prop.computed __type __id "confidence";
       created_by = Prop.computed __type __id "created_by";
       created_on = Prop.computed __type __id "created_on";
       defanged = Prop.computed __type __id "defanged";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       extension = Prop.computed __type __id "extension";
       external_id = Prop.computed __type __id "external_id";
       external_last_updated_time_utc =
         Prop.computed __type __id "external_last_updated_time_utc";
       guid = Prop.computed __type __id "guid";
       id = Prop.computed __type __id "id";
       indicator_type = Prop.computed __type __id "indicator_type";
       language = Prop.computed __type __id "language";
       last_updated_time_utc =
         Prop.computed __type __id "last_updated_time_utc";
       object_marking_refs =
         Prop.computed __type __id "object_marking_refs";
       parsed_pattern = Prop.computed __type __id "parsed_pattern";
       pattern = Prop.computed __type __id "pattern";
       pattern_type = Prop.computed __type __id "pattern_type";
       pattern_version = Prop.computed __type __id "pattern_version";
       revoked = Prop.computed __type __id "revoked";
       source = Prop.computed __type __id "source";
       tags = Prop.computed __type __id "tags";
       threat_types = Prop.computed __type __id "threat_types";
       validate_from_utc =
         Prop.computed __type __id "validate_from_utc";
       validate_until_utc =
         Prop.computed __type __id "validate_until_utc";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_threat_intelligence_indicator
        (azurerm_sentinel_threat_intelligence_indicator ?confidence
           ?created_by ?description ?extension ?id ?language
           ?object_marking_refs ?pattern_version ?revoked ?tags
           ?threat_types ?validate_until_utc ?timeouts ~display_name
           ~pattern ~pattern_type ~source ~validate_from_utc
           ~workspace_id ~external_reference ~granular_marking
           ~kill_chain_phase ());
    attrs = __attrs;
  }

let register ?tf_module ?confidence ?created_by ?description
    ?extension ?id ?language ?object_marking_refs ?pattern_version
    ?revoked ?tags ?threat_types ?validate_until_utc ?timeouts
    ~display_name ~pattern ~pattern_type ~source ~validate_from_utc
    ~workspace_id ~external_reference ~granular_marking
    ~kill_chain_phase __id =
  let (r : _ Tf_core.resource) =
    make ?confidence ?created_by ?description ?extension ?id
      ?language ?object_marking_refs ?pattern_version ?revoked ?tags
      ?threat_types ?validate_until_utc ?timeouts ~display_name
      ~pattern ~pattern_type ~source ~validate_from_utc ~workspace_id
      ~external_reference ~granular_marking ~kill_chain_phase __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
