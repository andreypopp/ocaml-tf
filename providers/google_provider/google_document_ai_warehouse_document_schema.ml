(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_document_ai_warehouse_document_schema__property_definitions__date_time_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__enum_type_options = {
  possible_values : string list;
      (** List of possible enum values. *)
  validation_check_disabled : bool option; [@option]
      (** Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default. *)
}
[@@deriving yojson_of]
(** Enum/categorical property. *)

type google_document_ai_warehouse_document_schema__property_definitions__float_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__integer_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__map_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__date_time_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__enum_type_options = {
  possible_values : string list;
      (** List of possible enum values. *)
  validation_check_disabled : bool option; [@option]
      (** Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default. *)
}
[@@deriving yojson_of]
(** Enum/categorical property. *)

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__float_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__integer_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__map_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__schema_sources = {
  name : string option; [@option]
      (** The schema name in the source. *)
  processor_type : string option; [@option]
      (** The Doc AI processor type name. *)
}
[@@deriving yojson_of]
(** The schema source information. *)

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__text_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__timestamp_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions = {
  display_name : string option; [@option]
      (** The display-name for the property, used for front-end. *)
  is_filterable : bool option; [@option]
      (** Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable. *)
  is_metadata : bool option; [@option]
      (** Whether the property is user supplied metadata. *)
  is_repeatable : bool option; [@option]
      (** Whether the property can have multiple values. *)
  is_required : bool option; [@option]
      (** Whether the property is mandatory. *)
  is_searchable : bool option; [@option]
      (** Indicates that the property should be included in a global search. *)
  name : string;  (** The name of the metadata property. *)
  retrieval_importance : string option; [@option]
      (** Stores the retrieval importance. Possible values: [HIGHEST, HIGHER, HIGH, MEDIUM, LOW, LOWEST] *)
  date_time_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__date_time_type_options
    list;
  enum_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__enum_type_options
    list;
  float_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__float_type_options
    list;
  integer_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__integer_type_options
    list;
  map_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__map_type_options
    list;
  schema_sources :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__schema_sources
    list;
  text_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__text_type_options
    list;
  timestamp_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions__timestamp_type_options
    list;
}
[@@deriving yojson_of]
(** Defines the metadata for a schema property. *)

type google_document_ai_warehouse_document_schema__property_definitions__property_type_options = {
  property_definitions :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options__property_definitions
    list;
}
[@@deriving yojson_of]
(** Nested structured data property. *)

type google_document_ai_warehouse_document_schema__property_definitions__schema_sources = {
  name : string option; [@option]
      (** The schema name in the source. *)
  processor_type : string option; [@option]
      (** The Doc AI processor type name. *)
}
[@@deriving yojson_of]
(** The schema source information. *)

type google_document_ai_warehouse_document_schema__property_definitions__text_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions__timestamp_type_options =
  unit
[@@deriving yojson_of]

type google_document_ai_warehouse_document_schema__property_definitions = {
  display_name : string option; [@option]
      (** The display-name for the property, used for front-end. *)
  is_filterable : bool option; [@option]
      (** Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable. *)
  is_metadata : bool option; [@option]
      (** Whether the property is user supplied metadata. *)
  is_repeatable : bool option; [@option]
      (** Whether the property can have multiple values. *)
  is_required : bool option; [@option]
      (** Whether the property is mandatory. *)
  is_searchable : bool option; [@option]
      (** Indicates that the property should be included in a global search. *)
  name : string;  (** The name of the metadata property. *)
  retrieval_importance : string option; [@option]
      (** Stores the retrieval importance. Possible values: [HIGHEST, HIGHER, HIGH, MEDIUM, LOW, LOWEST] *)
  date_time_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__date_time_type_options
    list;
  enum_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__enum_type_options
    list;
  float_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__float_type_options
    list;
  integer_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__integer_type_options
    list;
  map_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__map_type_options
    list;
  property_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__property_type_options
    list;
  schema_sources :
    google_document_ai_warehouse_document_schema__property_definitions__schema_sources
    list;
  text_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__text_type_options
    list;
  timestamp_type_options :
    google_document_ai_warehouse_document_schema__property_definitions__timestamp_type_options
    list;
}
[@@deriving yojson_of]
(** Defines the metadata for a schema property. *)

type google_document_ai_warehouse_document_schema__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_document_ai_warehouse_document_schema__timeouts *)

type google_document_ai_warehouse_document_schema = {
  display_name : string;
      (** Name of the schema given by the user. *)
  document_is_folder : bool option; [@option]
      (** Tells whether the document is a folder or a typical document. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location of the resource. *)
  project_number : string;
      (** The unique identifier of the project. *)
  property_definitions :
    google_document_ai_warehouse_document_schema__property_definitions
    list;
  timeouts :
    google_document_ai_warehouse_document_schema__timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_warehouse_document_schema *)

let google_document_ai_warehouse_document_schema ?document_is_folder
    ?id ?timeouts ~display_name ~location ~project_number
    ~property_definitions __resource_id =
  let __resource_type =
    "google_document_ai_warehouse_document_schema"
  in
  let __resource =
    {
      display_name;
      document_is_folder;
      id;
      location;
      project_number;
      property_definitions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_warehouse_document_schema
       __resource);
  ()
