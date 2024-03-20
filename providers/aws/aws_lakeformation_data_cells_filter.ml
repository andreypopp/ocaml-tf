(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type table_data__column_wildcard = {
  excluded_column_names : string prop list option; [@option]
      (** excluded_column_names *)
}
[@@deriving yojson_of]
(** table_data__column_wildcard *)

type table_data__row_filter__all_rows_wildcard = unit
[@@deriving yojson_of]

type table_data__row_filter = {
  filter_expression : string prop option; [@option]
      (** filter_expression *)
  all_rows_wildcard : table_data__row_filter__all_rows_wildcard list;
}
[@@deriving yojson_of]
(** table_data__row_filter *)

type table_data = {
  column_names : string prop list option; [@option]
      (** column_names *)
  database_name : string prop;  (** database_name *)
  name : string prop;  (** name *)
  table_catalog_id : string prop;  (** table_catalog_id *)
  table_name : string prop;  (** table_name *)
  version_id : string prop option; [@option]  (** version_id *)
  column_wildcard : table_data__column_wildcard list;
  row_filter : table_data__row_filter list;
}
[@@deriving yojson_of]
(** table_data *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lakeformation_data_cells_filter = {
  table_data : table_data list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_cells_filter *)

let table_data__column_wildcard ?excluded_column_names () :
    table_data__column_wildcard =
  { excluded_column_names }

let table_data__row_filter__all_rows_wildcard () = ()

let table_data__row_filter ?filter_expression ~all_rows_wildcard () :
    table_data__row_filter =
  { filter_expression; all_rows_wildcard }

let table_data ?column_names ?version_id ~database_name ~name
    ~table_catalog_id ~table_name ~column_wildcard ~row_filter () :
    table_data =
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

let aws_lakeformation_data_cells_filter ?timeouts ~table_data () :
    aws_lakeformation_data_cells_filter =
  { table_data; timeouts }

type t = { id : string prop }

let make ?timeouts ~table_data __id =
  let __type = "aws_lakeformation_data_cells_filter" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_data_cells_filter
        (aws_lakeformation_data_cells_filter ?timeouts ~table_data ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~table_data __id =
  let (r : _ Tf_core.resource) = make ?timeouts ~table_data __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
