(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type fields = {
  bool_value : bool prop option; [@option]
      (** Holds the value for a tag field with boolean type. *)
  double_value : float prop option; [@option]
      (** Holds the value for a tag field with double type. *)
  enum_value : string prop option; [@option]
      (** The display name of the enum value. *)
  field_name : string prop;  (** field_name *)
  string_value : string prop option; [@option]
      (** Holds the value for a tag field with string type. *)
  timestamp_value : string prop option; [@option]
      (** Holds the value for a tag field with timestamp type. *)
}
[@@deriving yojson_of]
(** This maps the ID of a tag field to the value of and additional information about that field.
Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_data_catalog_tag = {
  column : string prop option; [@option]
      (** Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
individual column based on that schema.

For attaching a tag to a nested column, use '.' to separate the column names. Example:
'outer_column.inner_column' *)
  id : string prop option; [@option]  (** id *)
  parent : string prop option; [@option]
      (** The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
all entries in that group. *)
  template : string prop;
      (** The resource name of the tag template that this tag uses. Example:
projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
This field cannot be modified after creation. *)
  fields : fields list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_tag *)

let fields ?bool_value ?double_value ?enum_value ?string_value
    ?timestamp_value ~field_name () : fields =
  {
    bool_value;
    double_value;
    enum_value;
    field_name;
    string_value;
    timestamp_value;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_tag ?column ?id ?parent ?timeouts ~template
    ~fields () : google_data_catalog_tag =
  { column; id; parent; template; fields; timeouts }

type t = {
  column : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template : string prop;
  template_displayname : string prop;
}

let register ?tf_module ?column ?id ?parent ?timeouts ~template
    ~fields __resource_id =
  let __resource_type = "google_data_catalog_tag" in
  let __resource =
    google_data_catalog_tag ?column ?id ?parent ?timeouts ~template
      ~fields ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_tag __resource);
  let __resource_attributes =
    ({
       column = Prop.computed __resource_type __resource_id "column";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       template =
         Prop.computed __resource_type __resource_id "template";
       template_displayname =
         Prop.computed __resource_type __resource_id
           "template_displayname";
     }
      : t)
  in
  __resource_attributes
