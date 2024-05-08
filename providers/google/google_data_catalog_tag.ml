(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fields = {
  bool_value : bool prop option; [@option]
  double_value : float prop option; [@option]
  enum_value : string prop option; [@option]
  field_name : string prop;
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fields) -> ()

let yojson_of_fields =
  (function
   | {
       bool_value = v_bool_value;
       double_value = v_double_value;
       enum_value = v_enum_value;
       field_name = v_field_name;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_name in
         ("field_name", arg) :: bnds
       in
       let bnds =
         match v_enum_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enum_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_double_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "double_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bool_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bool_value", arg in
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

type google_data_catalog_tag = {
  column : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop option; [@option]
  template : string prop;
  fields : fields list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_catalog_tag) -> ()

let yojson_of_google_data_catalog_tag =
  (function
   | {
       column = v_column;
       id = v_id;
       parent = v_parent;
       template = v_template;
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
         let arg = yojson_of_prop yojson_of_string v_template in
         ("template", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_catalog_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_catalog_tag

[@@@deriving.end]

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
  tf_name : string;
  column : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template : string prop;
  template_displayname : string prop;
}

let make ?column ?id ?parent ?timeouts ~template ~fields __id =
  let __type = "google_data_catalog_tag" in
  let __attrs =
    ({
       tf_name = __id;
       column = Prop.computed __type __id "column";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       template = Prop.computed __type __id "template";
       template_displayname =
         Prop.computed __type __id "template_displayname";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_tag
        (google_data_catalog_tag ?column ?id ?parent ?timeouts
           ~template ~fields ());
    attrs = __attrs;
  }

let register ?tf_module ?column ?id ?parent ?timeouts ~template
    ~fields __id =
  let (r : _ Tf_core.resource) =
    make ?column ?id ?parent ?timeouts ~template ~fields __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
