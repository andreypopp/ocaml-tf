(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entities = {
  synonyms : string prop list;
      (** A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym
could be green onions.
For KIND_LIST entity types:
* This collection must contain exactly one synonym equal to value. *)
  value : string prop;
      (** The primary value associated with this entity entry. For example, if the entity type is vegetable, the value
could be scallions.
For KIND_MAP entity types:
* A reference value to be used in place of synonyms.
For KIND_LIST entity types:
* A string that can contain references to other entity types (with or without aliases). *)
}
[@@deriving yojson_of]
(** The collection of entity entries associated with the entity type. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dialogflow_entity_type = {
  display_name : string prop;
      (** The name of this entity type to be displayed on the console. *)
  enable_fuzzy_extraction : bool prop option; [@option]
      (** Enables fuzzy entity extraction during classification. *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;
      (** Indicates the kind of entity type.
* KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
* KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
types can contain references to other entity types (with or without aliases).
* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [KIND_MAP, KIND_LIST, KIND_REGEXP] *)
  project : string prop option; [@option]  (** project *)
  entities : entities list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_entity_type *)

let entities ~synonyms ~value () : entities = { synonyms; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_entity_type ?enable_fuzzy_extraction ?id
    ?project ?timeouts ~display_name ~kind ~entities () :
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
  display_name : string prop;
  enable_fuzzy_extraction : bool prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  project : string prop;
}

let make ?enable_fuzzy_extraction ?id ?project ?timeouts
    ~display_name ~kind ~entities __id =
  let __type = "google_dialogflow_entity_type" in
  let __attrs =
    ({
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
           ?project ?timeouts ~display_name ~kind ~entities ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_fuzzy_extraction ?id ?project
    ?timeouts ~display_name ~kind ~entities __id =
  let (r : _ Tf_core.resource) =
    make ?enable_fuzzy_extraction ?id ?project ?timeouts
      ~display_name ~kind ~entities __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
