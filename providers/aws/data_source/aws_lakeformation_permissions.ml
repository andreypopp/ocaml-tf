(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_cells_filter = {
  database_name : string prop;
  name : string prop;
  table_catalog_id : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_cells_filter) -> ()

let yojson_of_data_cells_filter =
  (function
   | {
       database_name = v_database_name;
       name = v_name;
       table_catalog_id = v_table_catalog_id;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_table_catalog_id
         in
         ("table_catalog_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : data_cells_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_cells_filter

[@@@deriving.end]

type data_location = {
  arn : string prop;
  catalog_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_location) -> ()

let yojson_of_data_location =
  (function
   | { arn = v_arn; catalog_id = v_catalog_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : data_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_location

[@@@deriving.end]

type database = {
  catalog_id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : database) -> ()

let yojson_of_database =
  (function
   | { catalog_id = v_catalog_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_database

[@@@deriving.end]

type lf_tag = {
  catalog_id : string prop option; [@option]
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lf_tag) -> ()

let yojson_of_lf_tag =
  (function
   | { catalog_id = v_catalog_id; key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lf_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lf_tag

[@@@deriving.end]

type lf_tag_policy__expression = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lf_tag_policy__expression) -> ()

let yojson_of_lf_tag_policy__expression =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : lf_tag_policy__expression -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lf_tag_policy__expression

[@@@deriving.end]

type lf_tag_policy = {
  catalog_id : string prop option; [@option]
  resource_type : string prop;
  expression : lf_tag_policy__expression list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lf_tag_policy) -> ()

let yojson_of_lf_tag_policy =
  (function
   | {
       catalog_id = v_catalog_id;
       resource_type = v_resource_type;
       expression = v_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_lf_tag_policy__expression
             v_expression
         in
         ("expression", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lf_tag_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lf_tag_policy

[@@@deriving.end]

type table = {
  catalog_id : string prop option; [@option]
  database_name : string prop;
  name : string prop option; [@option]
  wildcard : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table) -> ()

let yojson_of_table =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       name = v_name;
       wildcard = v_wildcard;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wildcard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wildcard", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table

[@@@deriving.end]

type table_with_columns = {
  catalog_id : string prop option; [@option]
  column_names : string prop list option; [@option]
  database_name : string prop;
  excluded_column_names : string prop list option; [@option]
  name : string prop;
  wildcard : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_with_columns) -> ()

let yojson_of_table_with_columns =
  (function
   | {
       catalog_id = v_catalog_id;
       column_names = v_column_names;
       database_name = v_database_name;
       excluded_column_names = v_excluded_column_names;
       name = v_name;
       wildcard = v_wildcard;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wildcard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wildcard", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_excluded_column_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_column_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_column_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "column_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : table_with_columns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_with_columns

[@@@deriving.end]

type aws_lakeformation_permissions = {
  catalog_id : string prop option; [@option]
  catalog_resource : bool prop option; [@option]
  id : string prop option; [@option]
  principal : string prop;
  data_cells_filter : data_cells_filter list;
  data_location : data_location list;
  database : database list;
  lf_tag : lf_tag list;
  lf_tag_policy : lf_tag_policy list;
  table : table list;
  table_with_columns : table_with_columns list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_permissions) -> ()

let yojson_of_aws_lakeformation_permissions =
  (function
   | {
       catalog_id = v_catalog_id;
       catalog_resource = v_catalog_resource;
       id = v_id;
       principal = v_principal;
       data_cells_filter = v_data_cells_filter;
       data_location = v_data_location;
       database = v_database;
       lf_tag = v_lf_tag;
       lf_tag_policy = v_lf_tag_policy;
       table = v_table;
       table_with_columns = v_table_with_columns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_table_with_columns
             v_table_with_columns
         in
         ("table_with_columns", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_table v_table in
         ("table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_lf_tag_policy v_lf_tag_policy
         in
         ("lf_tag_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_lf_tag v_lf_tag in
         ("lf_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_database v_database in
         ("database", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_location v_data_location
         in
         ("data_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_cells_filter
             v_data_cells_filter
         in
         ("data_cells_filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
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
         match v_catalog_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "catalog_resource", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_permissions

[@@@deriving.end]

let data_cells_filter ~database_name ~name ~table_catalog_id
    ~table_name () : data_cells_filter =
  { database_name; name; table_catalog_id; table_name }

let data_location ?catalog_id ~arn () : data_location =
  { arn; catalog_id }

let database ?catalog_id ~name () : database = { catalog_id; name }

let lf_tag ?catalog_id ~key ~values () : lf_tag =
  { catalog_id; key; values }

let lf_tag_policy__expression ~key ~values () :
    lf_tag_policy__expression =
  { key; values }

let lf_tag_policy ?catalog_id ~resource_type ~expression () :
    lf_tag_policy =
  { catalog_id; resource_type; expression }

let table ?catalog_id ?name ?wildcard ~database_name () : table =
  { catalog_id; database_name; name; wildcard }

let table_with_columns ?catalog_id ?column_names
    ?excluded_column_names ?wildcard ~database_name ~name () :
    table_with_columns =
  {
    catalog_id;
    column_names;
    database_name;
    excluded_column_names;
    name;
    wildcard;
  }

let aws_lakeformation_permissions ?catalog_id ?catalog_resource ?id
    ~principal ~data_cells_filter ~data_location ~database ~lf_tag
    ~lf_tag_policy ~table ~table_with_columns () :
    aws_lakeformation_permissions =
  {
    catalog_id;
    catalog_resource;
    id;
    principal;
    data_cells_filter;
    data_location;
    database;
    lf_tag;
    lf_tag_policy;
    table;
    table_with_columns;
  }

type t = {
  catalog_id : string prop;
  catalog_resource : bool prop;
  id : string prop;
  permissions : string list prop;
  permissions_with_grant_option : string list prop;
  principal : string prop;
}

let make ?catalog_id ?catalog_resource ?id ~principal
    ~data_cells_filter ~data_location ~database ~lf_tag
    ~lf_tag_policy ~table ~table_with_columns __id =
  let __type = "aws_lakeformation_permissions" in
  let __attrs =
    ({
       catalog_id = Prop.computed __type __id "catalog_id";
       catalog_resource =
         Prop.computed __type __id "catalog_resource";
       id = Prop.computed __type __id "id";
       permissions = Prop.computed __type __id "permissions";
       permissions_with_grant_option =
         Prop.computed __type __id "permissions_with_grant_option";
       principal = Prop.computed __type __id "principal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_permissions
        (aws_lakeformation_permissions ?catalog_id ?catalog_resource
           ?id ~principal ~data_cells_filter ~data_location ~database
           ~lf_tag ~lf_tag_policy ~table ~table_with_columns ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?catalog_resource ?id ~principal
    ~data_cells_filter ~data_location ~database ~lf_tag
    ~lf_tag_policy ~table ~table_with_columns __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?catalog_resource ?id ~principal
      ~data_cells_filter ~data_location ~database ~lf_tag
      ~lf_tag_policy ~table ~table_with_columns __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
