(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_tag__fields = {
  bool_value : bool option; [@option]
      (** Holds the value for a tag field with boolean type. *)
  display_name : string;  (** The display name of this field *)
  double_value : float option; [@option]
      (** Holds the value for a tag field with double type. *)
  enum_value : string option; [@option]
      (** The display name of the enum value. *)
  field_name : string;  (** field_name *)
  order : float;
      (** The order of this field with respect to other fields in this tag. For example, a higher value can indicate
a more important field. The value can be negative. Multiple fields can have the same order, and field orders
within a tag do not have to be sequential. *)
  string_value : string option; [@option]
      (** Holds the value for a tag field with string type. *)
  timestamp_value : string option; [@option]
      (** Holds the value for a tag field with timestamp type. *)
}
[@@deriving yojson_of]
(** This maps the ID of a tag field to the value of and additional information about that field.
Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields. *)

type google_data_catalog_tag__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_tag__timeouts *)

type google_data_catalog_tag = {
  column : string option; [@option]
      (** Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
individual column based on that schema.

For attaching a tag to a nested column, use '.' to separate the column names. Example:
'outer_column.inner_column' *)
  id : string option; [@option]  (** id *)
  parent : string option; [@option]
      (** The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
all entries in that group. *)
  template : string;
      (** The resource name of the tag template that this tag uses. Example:
projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
This field cannot be modified after creation. *)
  fields : google_data_catalog_tag__fields list;
  timeouts : google_data_catalog_tag__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_tag *)

let google_data_catalog_tag ?column ?id ?parent ?timeouts ~template
    ~fields __resource_id =
  let __resource_type = "google_data_catalog_tag" in
  let __resource =
    { column; id; parent; template; fields; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_tag __resource);
  ()
