(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_permissions__data_cells_filter
type aws_lakeformation_permissions__data_location
type aws_lakeformation_permissions__database
type aws_lakeformation_permissions__lf_tag
type aws_lakeformation_permissions__lf_tag_policy__expression
type aws_lakeformation_permissions__lf_tag_policy
type aws_lakeformation_permissions__table
type aws_lakeformation_permissions__table_with_columns
type aws_lakeformation_permissions

type t = private {
  catalog_id : string prop;
  catalog_resource : bool prop;
  id : string prop;
  permissions : string list prop;
  permissions_with_grant_option : string list prop;
  principal : string prop;
}

val aws_lakeformation_permissions :
  ?catalog_id:string prop ->
  ?catalog_resource:bool prop ->
  ?id:string prop ->
  ?permissions_with_grant_option:string prop list ->
  permissions:string prop list ->
  principal:string prop ->
  data_cells_filter:
    aws_lakeformation_permissions__data_cells_filter list ->
  data_location:aws_lakeformation_permissions__data_location list ->
  database:aws_lakeformation_permissions__database list ->
  lf_tag:aws_lakeformation_permissions__lf_tag list ->
  lf_tag_policy:aws_lakeformation_permissions__lf_tag_policy list ->
  table:aws_lakeformation_permissions__table list ->
  table_with_columns:
    aws_lakeformation_permissions__table_with_columns list ->
  string ->
  t
