(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lakeformation_data_cells_filter__table_data__column_wildcard = {
  excluded_column_names : string list option; [@option]
      (** excluded_column_names *)
}
[@@deriving yojson_of]
(** aws_lakeformation_data_cells_filter__table_data__column_wildcard *)

type aws_lakeformation_data_cells_filter__table_data__row_filter__all_rows_wildcard =
  unit
[@@deriving yojson_of]

type aws_lakeformation_data_cells_filter__table_data__row_filter = {
  filter_expression : string option; [@option]
      (** filter_expression *)
  all_rows_wildcard :
    aws_lakeformation_data_cells_filter__table_data__row_filter__all_rows_wildcard
    list;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_cells_filter__table_data__row_filter *)

type aws_lakeformation_data_cells_filter__table_data = {
  column_names : string list option; [@option]  (** column_names *)
  database_name : string;  (** database_name *)
  name : string;  (** name *)
  table_catalog_id : string;  (** table_catalog_id *)
  table_name : string;  (** table_name *)
  version_id : string option; [@option]  (** version_id *)
  column_wildcard :
    aws_lakeformation_data_cells_filter__table_data__column_wildcard
    list;
  row_filter :
    aws_lakeformation_data_cells_filter__table_data__row_filter list;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_cells_filter__table_data *)

type aws_lakeformation_data_cells_filter__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_lakeformation_data_cells_filter__timeouts *)

type aws_lakeformation_data_cells_filter = {
  table_data : aws_lakeformation_data_cells_filter__table_data list;
  timeouts : aws_lakeformation_data_cells_filter__timeouts option;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_cells_filter *)

let aws_lakeformation_data_cells_filter ?timeouts ~table_data
    __resource_id =
  let __resource_type = "aws_lakeformation_data_cells_filter" in
  let __resource = { table_data; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_data_cells_filter __resource);
  ()