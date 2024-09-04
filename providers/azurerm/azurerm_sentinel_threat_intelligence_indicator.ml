(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_reference = {
  description : string prop option; [@option]
  hashes : string prop Tf_core.assoc option; [@option]
  source_name : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_reference) -> ()

let yojson_of_external_reference =
  (function
   | {
       description = v_description;
       hashes = v_hashes;
       source_name = v_source_name;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hashes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "hashes", arg in
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
       `Assoc bnds
    : external_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_reference

[@@@deriving.end]

type granular_marking = {
  language : string prop option; [@option]
  marking_ref : string prop option; [@option]
  selectors : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : granular_marking) -> ()

let yojson_of_granular_marking =
  (function
   | {
       language = v_language;
       marking_ref = v_marking_ref;
       selectors = v_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_selectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "selectors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_marking_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "marking_ref", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : granular_marking -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_granular_marking

[@@@deriving.end]

type kill_chain_phase = { name : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : kill_chain_phase) -> ()

let yojson_of_kill_chain_phase =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kill_chain_phase -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kill_chain_phase

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

type parsed_pattern__pattern_type_values = {
  value : string prop;
  value_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parsed_pattern__pattern_type_values) -> ()

let yojson_of_parsed_pattern__pattern_type_values =
  (function
   | { value = v_value; value_type = v_value_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_type in
         ("value_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : parsed_pattern__pattern_type_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parsed_pattern__pattern_type_values

[@@@deriving.end]

type parsed_pattern = {
  pattern_type_key : string prop;
  pattern_type_values : parsed_pattern__pattern_type_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parsed_pattern) -> ()

let yojson_of_parsed_pattern =
  (function
   | {
       pattern_type_key = v_pattern_type_key;
       pattern_type_values = v_pattern_type_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pattern_type_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parsed_pattern__pattern_type_values)
               v_pattern_type_values
           in
           let bnd = "pattern_type_values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pattern_type_key
         in
         ("pattern_type_key", arg) :: bnds
       in
       `Assoc bnds
    : parsed_pattern -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parsed_pattern

[@@@deriving.end]

type azurerm_sentinel_threat_intelligence_indicator = {
  confidence : float prop option; [@option]
  created_by : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  extension : string prop option; [@option]
  id : string prop option; [@option]
  language : string prop option; [@option]
  object_marking_refs : string prop list option; [@option]
  pattern : string prop;
  pattern_type : string prop;
  pattern_version : string prop option; [@option]
  revoked : bool prop option; [@option]
  source : string prop;
  tags : string prop list option; [@option]
  threat_types : string prop list option; [@option]
  validate_from_utc : string prop;
  validate_until_utc : string prop option; [@option]
  workspace_id : string prop;
  external_reference : external_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  granular_marking : granular_marking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kill_chain_phase : kill_chain_phase list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_sentinel_threat_intelligence_indicator) -> ()

let yojson_of_azurerm_sentinel_threat_intelligence_indicator =
  (function
   | {
       confidence = v_confidence;
       created_by = v_created_by;
       description = v_description;
       display_name = v_display_name;
       extension = v_extension;
       id = v_id;
       language = v_language;
       object_marking_refs = v_object_marking_refs;
       pattern = v_pattern;
       pattern_type = v_pattern_type;
       pattern_version = v_pattern_version;
       revoked = v_revoked;
       source = v_source;
       tags = v_tags;
       threat_types = v_threat_types;
       validate_from_utc = v_validate_from_utc;
       validate_until_utc = v_validate_until_utc;
       workspace_id = v_workspace_id;
       external_reference = v_external_reference;
       granular_marking = v_granular_marking;
       kill_chain_phase = v_kill_chain_phase;
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
         if Stdlib.( = ) [] v_kill_chain_phase then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kill_chain_phase)
               v_kill_chain_phase
           in
           let bnd = "kill_chain_phase", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_granular_marking then bnds
         else
           let arg =
             (yojson_of_list yojson_of_granular_marking)
               v_granular_marking
           in
           let bnd = "granular_marking", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_reference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_external_reference)
               v_external_reference
           in
           let bnd = "external_reference", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_validate_until_utc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "validate_until_utc", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_validate_from_utc
         in
         ("validate_from_utc", arg) :: bnds
       in
       let bnds =
         match v_threat_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "threat_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_revoked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "revoked", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pattern_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pattern_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern_type in
         ("pattern_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_object_marking_refs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "object_marking_refs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language", arg in
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
         match v_extension with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extension", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
         match v_created_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "created_by", arg in
             bnd :: bnds
       in
       let bnds =
         match v_confidence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "confidence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_threat_intelligence_indicator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_threat_intelligence_indicator

[@@@deriving.end]

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
    ?threat_types ?validate_until_utc ?(external_reference = [])
    ?(granular_marking = []) ?(kill_chain_phase = []) ?timeouts
    ~display_name ~pattern ~pattern_type ~source ~validate_from_utc
    ~workspace_id () : azurerm_sentinel_threat_intelligence_indicator
    =
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
  tf_name : string;
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
    ?threat_types ?validate_until_utc ?(external_reference = [])
    ?(granular_marking = []) ?(kill_chain_phase = []) ?timeouts
    ~display_name ~pattern ~pattern_type ~source ~validate_from_utc
    ~workspace_id __id =
  let __type = "azurerm_sentinel_threat_intelligence_indicator" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?threat_types ?validate_until_utc ~external_reference
           ~granular_marking ~kill_chain_phase ?timeouts
           ~display_name ~pattern ~pattern_type ~source
           ~validate_from_utc ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?confidence ?created_by ?description
    ?extension ?id ?language ?object_marking_refs ?pattern_version
    ?revoked ?tags ?threat_types ?validate_until_utc
    ?(external_reference = []) ?(granular_marking = [])
    ?(kill_chain_phase = []) ?timeouts ~display_name ~pattern
    ~pattern_type ~source ~validate_from_utc ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?confidence ?created_by ?description ?extension ?id
      ?language ?object_marking_refs ?pattern_version ?revoked ?tags
      ?threat_types ?validate_until_utc ~external_reference
      ~granular_marking ~kill_chain_phase ?timeouts ~display_name
      ~pattern ~pattern_type ~source ~validate_from_utc ~workspace_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
