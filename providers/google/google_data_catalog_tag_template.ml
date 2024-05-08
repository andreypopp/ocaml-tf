(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fields__type__enum_type__allowed_values = {
  display_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fields__type__enum_type__allowed_values) -> ()

let yojson_of_fields__type__enum_type__allowed_values =
  (function
   | { display_name = v_display_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : fields__type__enum_type__allowed_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fields__type__enum_type__allowed_values

[@@@deriving.end]

type fields__type__enum_type = {
  allowed_values : fields__type__enum_type__allowed_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fields__type__enum_type) -> ()

let yojson_of_fields__type__enum_type =
  (function
   | { allowed_values = v_allowed_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fields__type__enum_type__allowed_values)
               v_allowed_values
           in
           let bnd = "allowed_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : fields__type__enum_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fields__type__enum_type

[@@@deriving.end]

type fields__type = {
  primitive_type : string prop option; [@option]
  enum_type : fields__type__enum_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fields__type) -> ()

let yojson_of_fields__type =
  (function
   | { primitive_type = v_primitive_type; enum_type = v_enum_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_enum_type then bnds
         else
           let arg =
             (yojson_of_list yojson_of_fields__type__enum_type)
               v_enum_type
           in
           let bnd = "enum_type", arg in
           bnd :: bnds
       in
       let bnds =
         match v_primitive_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primitive_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fields__type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fields__type

[@@@deriving.end]

type fields = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  field_id : string prop;
  is_required : bool prop option; [@option]
  order : float prop option; [@option]
  type_ : fields__type list;
      [@key "type"] [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fields) -> ()

let yojson_of_fields =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       field_id = v_field_id;
       is_required = v_is_required;
       order = v_order;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_type_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_fields__type) v_type_
           in
           let bnd = "type", arg in
           bnd :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_id in
         ("field_id", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : fields -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fields

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

type google_data_catalog_tag_template = {
  display_name : string prop option; [@option]
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  tag_template_id : string prop;
  fields : fields list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_catalog_tag_template) -> ()

let yojson_of_google_data_catalog_tag_template =
  (function
   | {
       display_name = v_display_name;
       force_delete = v_force_delete;
       id = v_id;
       project = v_project;
       region = v_region;
       tag_template_id = v_tag_template_id;
       fields = v_fields;
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
         if Stdlib.( = ) [] v_fields then bnds
         else
           let arg = (yojson_of_list yojson_of_fields) v_fields in
           let bnd = "fields", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tag_template_id
         in
         ("tag_template_id", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_catalog_tag_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_catalog_tag_template

[@@@deriving.end]

let fields__type__enum_type__allowed_values ~display_name () :
    fields__type__enum_type__allowed_values =
  { display_name }

let fields__type__enum_type ~allowed_values () :
    fields__type__enum_type =
  { allowed_values }

let fields__type ?primitive_type ?(enum_type = []) () : fields__type
    =
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
  tf_name : string;
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
       tf_name = __id;
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
