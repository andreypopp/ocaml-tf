(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entities = {
  synonyms : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  value : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         if [] = v_synonyms then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_synonyms
           in
           let bnd = "synonyms", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : entities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entities

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

type google_dialogflow_entity_type = {
  display_name : string prop;
  enable_fuzzy_extraction : bool prop option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  project : string prop option; [@option]
  entities : entities list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_entity_type) -> ()

let yojson_of_google_dialogflow_entity_type =
  (function
   | {
       display_name = v_display_name;
       enable_fuzzy_extraction = v_enable_fuzzy_extraction;
       id = v_id;
       kind = v_kind;
       project = v_project;
       entities = v_entities;
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
         if [] = v_entities then bnds
         else
           let arg =
             (yojson_of_list yojson_of_entities) v_entities
           in
           let bnd = "entities", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
       `Assoc bnds
    : google_dialogflow_entity_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_entity_type

[@@@deriving.end]

let entities ~synonyms ~value () : entities = { synonyms; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_entity_type ?enable_fuzzy_extraction ?id
    ?project ?(entities = []) ?timeouts ~display_name ~kind () :
    google_dialogflow_entity_type =
  {
    display_name;
    enable_fuzzy_extraction;
    id;
    kind;
    project;
    entities;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  enable_fuzzy_extraction : bool prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  project : string prop;
}

let make ?enable_fuzzy_extraction ?id ?project ?(entities = [])
    ?timeouts ~display_name ~kind __id =
  let __type = "google_dialogflow_entity_type" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       enable_fuzzy_extraction =
         Prop.computed __type __id "enable_fuzzy_extraction";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_entity_type
        (google_dialogflow_entity_type ?enable_fuzzy_extraction ?id
           ?project ~entities ?timeouts ~display_name ~kind ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_fuzzy_extraction ?id ?project
    ?(entities = []) ?timeouts ~display_name ~kind __id =
  let (r : _ Tf_core.resource) =
    make ?enable_fuzzy_extraction ?id ?project ~entities ?timeouts
      ~display_name ~kind __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
