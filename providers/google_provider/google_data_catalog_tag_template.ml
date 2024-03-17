(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_tag_template__fields__type__enum_type__allowed_values = {
  display_name : string;  (** The display name of the enum value. *)
}
[@@deriving yojson_of]
(** The set of allowed values for this enum. The display names of the
values must be case-insensitively unique within this set. Currently,
enum values can only be added to the list of allowed values. Deletion
and renaming of enum values are not supported.
Can have up to 500 allowed values. *)

type google_data_catalog_tag_template__fields__type__enum_type = {
  allowed_values :
    google_data_catalog_tag_template__fields__type__enum_type__allowed_values
    list;
}
[@@deriving yojson_of]
(** Represents an enum type.
 Exactly one of 'primitive_type' or 'enum_type' must be set *)

type google_data_catalog_tag_template__fields__type = {
  primitive_type : string option; [@option]
      (** Represents primitive types - string, bool etc.
 Exactly one of 'primitive_type' or 'enum_type' must be set Possible values: [DOUBLE, STRING, BOOL, TIMESTAMP] *)
  enum_type :
    google_data_catalog_tag_template__fields__type__enum_type list;
}
[@@deriving yojson_of]
(** The type of value this tag field can contain. *)

type google_data_catalog_tag_template__fields = {
  description : string option; [@option]
      (** A description for this field. *)
  display_name : string option; [@option]
      (** The display name for this field. *)
  field_id : string;  (** field_id *)
  is_required : bool option; [@option]
      (** Whether this is a required field. Defaults to false. *)
  name : string;
      (** The resource name of the tag template field in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}/fields/{field} *)
  order : float option; [@option]
      (** The order of this field with respect to other fields in this tag template.
A higher value indicates a more important field. The value can be negative.
Multiple fields can have the same order, and field orders within a tag do not have to be sequential. *)
  type_ : google_data_catalog_tag_template__fields__type list;
}
[@@deriving yojson_of]
(** Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it. *)

type google_data_catalog_tag_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template__timeouts *)

type google_data_catalog_tag_template = {
  display_name : string option; [@option]
      (** The display name for this template. *)
  force_delete : bool option; [@option]
      (** This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template. *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** Template location region. *)
  tag_template_id : string;
      (** The id of the tag template to create. *)
  fields : google_data_catalog_tag_template__fields list;
  timeouts : google_data_catalog_tag_template__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template *)

let google_data_catalog_tag_template ?display_name ?force_delete ?id
    ?project ?region ?timeouts ~tag_template_id ~fields __resource_id
    =
  let __resource_type = "google_data_catalog_tag_template" in
  let __resource =
    {
      display_name;
      force_delete;
      id;
      project;
      region;
      tag_template_id;
      fields;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_tag_template __resource);
  ()
