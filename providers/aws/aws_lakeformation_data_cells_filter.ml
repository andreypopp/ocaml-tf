(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type table_data__column_wildcard = {
  excluded_column_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_data__column_wildcard) -> ()

let yojson_of_table_data__column_wildcard =
  (function
   | { excluded_column_names = v_excluded_column_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : table_data__column_wildcard ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_data__column_wildcard

[@@@deriving.end]

type table_data__row_filter__all_rows_wildcard = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : table_data__row_filter__all_rows_wildcard) -> ()

let yojson_of_table_data__row_filter__all_rows_wildcard =
  (yojson_of_unit
    : table_data__row_filter__all_rows_wildcard ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_data__row_filter__all_rows_wildcard

[@@@deriving.end]

type table_data__row_filter = {
  filter_expression : string prop option; [@option]
  all_rows_wildcard : table_data__row_filter__all_rows_wildcard list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_data__row_filter) -> ()

let yojson_of_table_data__row_filter =
  (function
   | {
       filter_expression = v_filter_expression;
       all_rows_wildcard = v_all_rows_wildcard;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_all_rows_wildcard then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_table_data__row_filter__all_rows_wildcard)
               v_all_rows_wildcard
           in
           let bnd = "all_rows_wildcard", arg in
           bnd :: bnds
       in
       let bnds =
         match v_filter_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : table_data__row_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_data__row_filter

[@@@deriving.end]

type table_data = {
  column_names : string prop list option; [@option]
  database_name : string prop;
  name : string prop;
  table_catalog_id : string prop;
  table_name : string prop;
  version_id : string prop option; [@option]
  column_wildcard : table_data__column_wildcard list;
      [@default []] [@yojson_drop_default ( = )]
  row_filter : table_data__row_filter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_data) -> ()

let yojson_of_table_data =
  (function
   | {
       column_names = v_column_names;
       database_name = v_database_name;
       name = v_name;
       table_catalog_id = v_table_catalog_id;
       table_name = v_table_name;
       version_id = v_version_id;
       column_wildcard = v_column_wildcard;
       row_filter = v_row_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_row_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_data__row_filter)
               v_row_filter
           in
           let bnd = "row_filter", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_column_wildcard then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_data__column_wildcard)
               v_column_wildcard
           in
           let bnd = "column_wildcard", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
             bnd :: bnds
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
       `Assoc bnds
    : table_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_data

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_lakeformation_data_cells_filter = {
  table_data : table_data list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_data_cells_filter) -> ()

let yojson_of_aws_lakeformation_data_cells_filter =
  (function
   | { table_data = v_table_data; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_table_data then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_data) v_table_data
           in
           let bnd = "table_data", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_data_cells_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_data_cells_filter

[@@@deriving.end]

let table_data__column_wildcard ?excluded_column_names () :
    table_data__column_wildcard =
  { excluded_column_names }

let table_data__row_filter__all_rows_wildcard () = ()

let table_data__row_filter ?filter_expression
    ?(all_rows_wildcard = []) () : table_data__row_filter =
  { filter_expression; all_rows_wildcard }

let table_data ?column_names ?version_id ?(column_wildcard = [])
    ?(row_filter = []) ~database_name ~name ~table_catalog_id
    ~table_name () : table_data =
  {
    column_names;
    database_name;
    name;
    table_catalog_id;
    table_name;
    version_id;
    column_wildcard;
    row_filter;
  }

let timeouts ?create () : timeouts = { create }

let aws_lakeformation_data_cells_filter ?(table_data = []) ?timeouts
    () : aws_lakeformation_data_cells_filter =
  { table_data; timeouts }

type t = { tf_name : string; id : string prop }

let make ?(table_data = []) ?timeouts __id =
  let __type = "aws_lakeformation_data_cells_filter" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_data_cells_filter
        (aws_lakeformation_data_cells_filter ~table_data ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?(table_data = []) ?timeouts __id =
  let (r : _ Tf_core.resource) = make ~table_data ?timeouts __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
