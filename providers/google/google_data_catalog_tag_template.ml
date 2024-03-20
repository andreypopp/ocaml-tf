(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fields__type__enum_type__allowed_values = {
  display_name : string prop;
      (** The display name of the enum value. *)
}
[@@deriving yojson_of]
(** The set of allowed values for this enum. The display names of the
values must be case-insensitively unique within this set. Currently,
enum values can only be added to the list of allowed values. Deletion
and renaming of enum values are not supported.
Can have up to 500 allowed values. *)

type fields__type__enum_type = {
  allowed_values : fields__type__enum_type__allowed_values list;
}
[@@deriving yojson_of]
(** Represents an enum type.
 Exactly one of 'primitive_type' or 'enum_type' must be set *)

type fields__type = {
  primitive_type : string prop option; [@option]
      (** Represents primitive types - string, bool etc.
 Exactly one of 'primitive_type' or 'enum_type' must be set Possible values: [DOUBLE, STRING, BOOL, TIMESTAMP] *)
  enum_type : fields__type__enum_type list;
}
[@@deriving yojson_of]
(** The type of value this tag field can contain. *)

type fields = {
  description : string prop option; [@option]
      (** A description for this field. *)
  display_name : string prop option; [@option]
      (** The display name for this field. *)
  field_id : string prop;  (** field_id *)
  is_required : bool prop option; [@option]
      (** Whether this is a required field. Defaults to false. *)
  order : float prop option; [@option]
      (** The order of this field with respect to other fields in this tag template.
A higher value indicates a more important field. The value can be negative.
Multiple fields can have the same order, and field orders within a tag do not have to be sequential. *)
  type_ : fields__type list;
}
[@@deriving yojson_of]
(** Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_data_catalog_tag_template = {
  display_name : string prop option; [@option]
      (** The display name for this template. *)
  force_delete : bool prop option; [@option]
      (** This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Template location region. *)
  tag_template_id : string prop;
      (** The id of the tag template to create. *)
  fields : fields list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template *)

let fields__type__enum_type__allowed_values ~display_name () :
    fields__type__enum_type__allowed_values =
  { display_name }

let fields__type__enum_type ~allowed_values () :
    fields__type__enum_type =
  { allowed_values }

let fields__type ?primitive_type ~enum_type () : fields__type =
  { primitive_type; enum_type }

let fields ?description ?display_name ?is_required ?order ~field_id
    ~type_ () : fields =
  { description; display_name; field_id; is_required; order; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_tag_template ?display_name ?force_delete ?id
    ?project ?region ?timeouts ~tag_template_id ~fields () :
    google_data_catalog_tag_template =
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

type t = {
  display_name : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  tag_template_id : string prop;
}

let make ?display_name ?force_delete ?id ?project ?region ?timeouts
    ~tag_template_id ~fields __id =
  let __type = "google_data_catalog_tag_template" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       tag_template_id = Prop.computed __type __id "tag_template_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_tag_template
        (google_data_catalog_tag_template ?display_name ?force_delete
           ?id ?project ?region ?timeouts ~tag_template_id ~fields ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?force_delete ?id ?project
    ?region ?timeouts ~tag_template_id ~fields __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?force_delete ?id ?project ?region ?timeouts
      ~tag_template_id ~fields __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
