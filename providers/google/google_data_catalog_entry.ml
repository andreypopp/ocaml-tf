(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gcs_fileset_spec__sample_gcs_file_specs = {
  file_path : string prop;
  size_bytes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gcs_fileset_spec__sample_gcs_file_specs) -> ()

let yojson_of_gcs_fileset_spec__sample_gcs_file_specs =
  (function
   | { file_path = v_file_path; size_bytes = v_size_bytes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_bytes in
         ("size_bytes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_file_path in
         ("file_path", arg) :: bnds
       in
       `Assoc bnds
    : gcs_fileset_spec__sample_gcs_file_specs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gcs_fileset_spec__sample_gcs_file_specs

[@@@deriving.end]

type gcs_fileset_spec = { file_patterns : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : gcs_fileset_spec) -> ()

let yojson_of_gcs_fileset_spec =
  (function
   | { file_patterns = v_file_patterns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_file_patterns
         in
         ("file_patterns", arg) :: bnds
       in
       `Assoc bnds
    : gcs_fileset_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gcs_fileset_spec

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

type bigquery_date_sharded_spec = {
  dataset : string prop;
  shard_count : float prop;
  table_prefix : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_date_sharded_spec) -> ()

let yojson_of_bigquery_date_sharded_spec =
  (function
   | {
       dataset = v_dataset;
       shard_count = v_shard_count;
       table_prefix = v_table_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_prefix in
         ("table_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_shard_count in
         ("shard_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_date_sharded_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_date_sharded_spec

[@@@deriving.end]

type bigquery_table_spec__view_spec = { view_query : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_table_spec__view_spec) -> ()

let yojson_of_bigquery_table_spec__view_spec =
  (function
   | { view_query = v_view_query } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_view_query in
         ("view_query", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_table_spec__view_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_table_spec__view_spec

[@@@deriving.end]

type bigquery_table_spec__table_spec = {
  grouped_entry : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_table_spec__table_spec) -> ()

let yojson_of_bigquery_table_spec__table_spec =
  (function
   | { grouped_entry = v_grouped_entry } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_grouped_entry in
         ("grouped_entry", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_table_spec__table_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_table_spec__table_spec

[@@@deriving.end]

type bigquery_table_spec = {
  table_source_type : string prop;
  table_spec : bigquery_table_spec__table_spec list;
  view_spec : bigquery_table_spec__view_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_table_spec) -> ()

let yojson_of_bigquery_table_spec =
  (function
   | {
       table_source_type = v_table_source_type;
       table_spec = v_table_spec;
       view_spec = v_view_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bigquery_table_spec__view_spec
             v_view_spec
         in
         ("view_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bigquery_table_spec__table_spec
             v_table_spec
         in
         ("table_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_table_source_type
         in
         ("table_source_type", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_table_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_table_spec

[@@@deriving.end]

type google_data_catalog_entry = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  entry_group : string prop;
  entry_id : string prop;
  id : string prop option; [@option]
  linked_resource : string prop option; [@option]
  schema : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user_specified_system : string prop option; [@option]
  user_specified_type : string prop option; [@option]
  gcs_fileset_spec : gcs_fileset_spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_catalog_entry) -> ()

let yojson_of_google_data_catalog_entry =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       entry_group = v_entry_group;
       entry_id = v_entry_id;
       id = v_id;
       linked_resource = v_linked_resource;
       schema = v_schema;
       type_ = v_type_;
       user_specified_system = v_user_specified_system;
       user_specified_type = v_user_specified_type;
       gcs_fileset_spec = v_gcs_fileset_spec;
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
         let arg =
           yojson_of_list yojson_of_gcs_fileset_spec
             v_gcs_fileset_spec
         in
         ("gcs_fileset_spec", arg) :: bnds
       in
       let bnds =
         match v_user_specified_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_specified_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_specified_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_specified_system", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linked_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linked_resource", arg in
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
         let arg = yojson_of_prop yojson_of_string v_entry_id in
         ("entry_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entry_group in
         ("entry_group", arg) :: bnds
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
    : google_data_catalog_entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_catalog_entry

[@@@deriving.end]

let gcs_fileset_spec ~file_patterns () : gcs_fileset_spec =
  { file_patterns }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_entry ?description ?display_name ?id
    ?linked_resource ?schema ?type_ ?user_specified_system
    ?user_specified_type ?timeouts ~entry_group ~entry_id
    ~gcs_fileset_spec () : google_data_catalog_entry =
  {
    description;
    display_name;
    entry_group;
    entry_id;
    id;
    linked_resource;
    schema;
    type_;
    user_specified_system;
    user_specified_type;
    gcs_fileset_spec;
    timeouts;
  }

type t = {
  bigquery_date_sharded_spec : bigquery_date_sharded_spec list prop;
  bigquery_table_spec : bigquery_table_spec list prop;
  description : string prop;
  display_name : string prop;
  entry_group : string prop;
  entry_id : string prop;
  id : string prop;
  integrated_system : string prop;
  linked_resource : string prop;
  name : string prop;
  schema : string prop;
  type_ : string prop;
  user_specified_system : string prop;
  user_specified_type : string prop;
}

let make ?description ?display_name ?id ?linked_resource ?schema
    ?type_ ?user_specified_system ?user_specified_type ?timeouts
    ~entry_group ~entry_id ~gcs_fileset_spec __id =
  let __type = "google_data_catalog_entry" in
  let __attrs =
    ({
       bigquery_date_sharded_spec =
         Prop.computed __type __id "bigquery_date_sharded_spec";
       bigquery_table_spec =
         Prop.computed __type __id "bigquery_table_spec";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       entry_group = Prop.computed __type __id "entry_group";
       entry_id = Prop.computed __type __id "entry_id";
       id = Prop.computed __type __id "id";
       integrated_system =
         Prop.computed __type __id "integrated_system";
       linked_resource = Prop.computed __type __id "linked_resource";
       name = Prop.computed __type __id "name";
       schema = Prop.computed __type __id "schema";
       type_ = Prop.computed __type __id "type";
       user_specified_system =
         Prop.computed __type __id "user_specified_system";
       user_specified_type =
         Prop.computed __type __id "user_specified_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_entry
        (google_data_catalog_entry ?description ?display_name ?id
           ?linked_resource ?schema ?type_ ?user_specified_system
           ?user_specified_type ?timeouts ~entry_group ~entry_id
           ~gcs_fileset_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id
    ?linked_resource ?schema ?type_ ?user_specified_system
    ?user_specified_type ?timeouts ~entry_group ~entry_id
    ~gcs_fileset_spec __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?linked_resource ?schema
      ?type_ ?user_specified_system ?user_specified_type ?timeouts
      ~entry_group ~entry_id ~gcs_fileset_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
