(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_cx_entity_type__entities = {
  synonyms : string prop list option; [@option]
      (** A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym could be green onions.
For KIND_LIST entity types: This collection must contain exactly one synonym equal to value. *)
  value : string prop option; [@option]
      (** The primary value associated with this entity entry. For example, if the entity type is vegetable, the value could be scallions.
For KIND_MAP entity types: A canonical value to be used in place of synonyms.
For KIND_LIST entity types: A string that can contain references to other entity types (with or without aliases). *)
}
[@@deriving yojson_of]
(** The collection of entity entries associated with the entity type. *)

type google_dialogflow_cx_entity_type__excluded_phrases = {
  value : string prop option; [@option]
      (** The word or phrase to be excluded. *)
}
[@@deriving yojson_of]
(** Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive. *)

type google_dialogflow_cx_entity_type__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_entity_type__timeouts *)

type google_dialogflow_cx_entity_type = {
  auto_expansion_mode : string prop option; [@option]
      (** Represents kinds of entities.
* AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
* AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity. Possible values: [AUTO_EXPANSION_MODE_DEFAULT, AUTO_EXPANSION_MODE_UNSPECIFIED] *)
  display_name : string prop;
      (** The human-readable name of the entity type, unique within the agent. *)
  enable_fuzzy_extraction : bool prop option; [@option]
      (** Enables fuzzy entity extraction during classification. *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;
      (** Indicates whether the entity type can be automatically expanded.
* KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
* KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [KIND_MAP, KIND_LIST, KIND_REGEXP] *)
  language_code : string prop option; [@option]
      (** The language of the following fields in entityType:
EntityType.entities.value
EntityType.entities.synonyms
EntityType.excluded_phrases.value
If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. *)
  parent : string prop option; [@option]
      (** The agent to create a entity type for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  redact : bool prop option; [@option]
      (** Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging. *)
  entities : google_dialogflow_cx_entity_type__entities list;
  excluded_phrases :
    google_dialogflow_cx_entity_type__excluded_phrases list;
  timeouts : google_dialogflow_cx_entity_type__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_entity_type *)

let google_dialogflow_cx_entity_type ?auto_expansion_mode
    ?enable_fuzzy_extraction ?id ?language_code ?parent ?redact
    ?timeouts ~display_name ~kind ~entities ~excluded_phrases
    __resource_id =
  let __resource_type = "google_dialogflow_cx_entity_type" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_entity_type __resource);
  ()
