(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lf_tag) -> ()

let yojson_of_lf_tag =
  (function
   | { catalog_id = v_catalog_id; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_lakeformation_resource_lf_tags = {
  catalog_id : string prop option; [@option]
  id : string prop option; [@option]
  database : database list;
      [@default []] [@yojson_drop_default ( = )]
  lf_tag : lf_tag list; [@default []] [@yojson_drop_default ( = )]
  table : table list; [@default []] [@yojson_drop_default ( = )]
  table_with_columns : table_with_columns list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_resource_lf_tags) -> ()

let yojson_of_aws_lakeformation_resource_lf_tags =
  (function
   | {
       catalog_id = v_catalog_id;
       id = v_id;
       database = v_database;
       lf_tag = v_lf_tag;
       table = v_table;
       table_with_columns = v_table_with_columns;
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
         if [] = v_table_with_columns then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_with_columns)
               v_table_with_columns
           in
           let bnd = "table_with_columns", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_table then bnds
         else
           let arg = (yojson_of_list yojson_of_table) v_table in
           let bnd = "table", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lf_tag then bnds
         else
           let arg = (yojson_of_list yojson_of_lf_tag) v_lf_tag in
           let bnd = "lf_tag", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_database then bnds
         else
           let arg =
             (yojson_of_list yojson_of_database) v_database
           in
           let bnd = "database", arg in
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
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_resource_lf_tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_resource_lf_tags

[@@@deriving.end]

let database ?catalog_id ~name () : database = { catalog_id; name }

let lf_tag ?catalog_id ~key ~value () : lf_tag =
  { catalog_id; key; value }

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

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_lakeformation_resource_lf_tags ?catalog_id ?id
    ?(database = []) ?(table = []) ?(table_with_columns = [])
    ?timeouts ~lf_tag () : aws_lakeformation_resource_lf_tags =
  {
    catalog_id;
    id;
    database;
    lf_tag;
    table;
    table_with_columns;
    timeouts;
  }

type t = {
  tf_name : string;
  catalog_id : string prop;
  id : string prop;
}

let make ?catalog_id ?id ?(database = []) ?(table = [])
    ?(table_with_columns = []) ?timeouts ~lf_tag __id =
  let __type = "aws_lakeformation_resource_lf_tags" in
  let __attrs =
    ({
       tf_name = __id;
       catalog_id = Prop.computed __type __id "catalog_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_resource_lf_tags
        (aws_lakeformation_resource_lf_tags ?catalog_id ?id ~database
           ~table ~table_with_columns ?timeouts ~lf_tag ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ?(database = [])
    ?(table = []) ?(table_with_columns = []) ?timeouts ~lf_tag __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ~database ~table ~table_with_columns
      ?timeouts ~lf_tag __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
