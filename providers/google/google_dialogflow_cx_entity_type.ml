(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entities = {
  synonyms : string prop list option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entities) -> ()

let yojson_of_entities =
  (function
   | { synonyms = v_synonyms; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_synonyms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "synonyms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : entities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entities

[@@@deriving.end]

type excluded_phrases = { value : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : excluded_phrases) -> ()

let yojson_of_excluded_phrases =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : excluded_phrases -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_excluded_phrases

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_dialogflow_cx_entity_type = {
  auto_expansion_mode : string prop option; [@option]
  display_name : string prop;
  enable_fuzzy_extraction : bool prop option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  language_code : string prop option; [@option]
  parent : string prop option; [@option]
  redact : bool prop option; [@option]
  entities : entities list;
  excluded_phrases : excluded_phrases list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_entity_type) -> ()

let yojson_of_google_dialogflow_cx_entity_type =
  (function
   | {
       auto_expansion_mode = v_auto_expansion_mode;
       display_name = v_display_name;
       enable_fuzzy_extraction = v_enable_fuzzy_extraction;
       id = v_id;
       kind = v_kind;
       language_code = v_language_code;
       parent = v_parent;
       redact = v_redact;
       entities = v_entities;
       excluded_phrases = v_excluded_phrases;
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
         let arg =
           yojson_of_list yojson_of_excluded_phrases
             v_excluded_phrases
         in
         ("excluded_phrases", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_entities v_entities in
         ("entities", arg) :: bnds
       in
       let bnds =
         match v_redact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "redact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
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
         match v_enable_fuzzy_extraction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_fuzzy_extraction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_auto_expansion_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_expansion_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_cx_entity_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_entity_type

[@@@deriving.end]

let entities ?synonyms ?value () : entities = { synonyms; value }
let excluded_phrases ?value () : excluded_phrases = { value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_entity_type ?auto_expansion_mode
    ?enable_fuzzy_extraction ?id ?language_code ?parent ?redact
    ?(excluded_phrases = []) ?timeouts ~display_name ~kind ~entities
    () : google_dialogflow_cx_entity_type =
  {
    auto_expansion_mode;
    display_name;
    enable_fuzzy_extraction;
    id;
    kind;
    language_code;
    parent;
    redact;
    entities;
    excluded_phrases;
    timeouts;
  }

type t = {
  auto_expansion_mode : string prop;
  display_name : string prop;
  enable_fuzzy_extraction : bool prop;
  id : string prop;
  kind : string prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  redact : bool prop;
}

let make ?auto_expansion_mode ?enable_fuzzy_extraction ?id
    ?language_code ?parent ?redact ?(excluded_phrases = []) ?timeouts
    ~display_name ~kind ~entities __id =
  let __type = "google_dialogflow_cx_entity_type" in
  let __attrs =
    ({
       auto_expansion_mode =
         Prop.computed __type __id "auto_expansion_mode";
       display_name = Prop.computed __type __id "display_name";
       enable_fuzzy_extraction =
         Prop.computed __type __id "enable_fuzzy_extraction";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       language_code = Prop.computed __type __id "language_code";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       redact = Prop.computed __type __id "redact";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_entity_type
        (google_dialogflow_cx_entity_type ?auto_expansion_mode
           ?enable_fuzzy_extraction ?id ?language_code ?parent
           ?redact ~excluded_phrases ?timeouts ~display_name ~kind
           ~entities ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_expansion_mode ?enable_fuzzy_extraction
    ?id ?language_code ?parent ?redact ?(excluded_phrases = [])
    ?timeouts ~display_name ~kind ~entities __id =
  let (r : _ Tf_core.resource) =
    make ?auto_expansion_mode ?enable_fuzzy_extraction ?id
      ?language_code ?parent ?redact ~excluded_phrases ?timeouts
      ~display_name ~kind ~entities __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
