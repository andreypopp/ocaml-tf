(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_resource_lf_tags__database
type aws_lakeformation_resource_lf_tags__lf_tag
type aws_lakeformation_resource_lf_tags__table
type aws_lakeformation_resource_lf_tags__table_with_columns
type aws_lakeformation_resource_lf_tags__timeouts
type aws_lakeformation_resource_lf_tags

val aws_lakeformation_resource_lf_tags :
  ?catalog_id:string ->
  ?id:string ->
  ?timeouts:aws_lakeformation_resource_lf_tags__timeouts ->
  database:aws_lakeformation_resource_lf_tags__database list ->
  lf_tag:aws_lakeformation_resource_lf_tags__lf_tag list ->
  table:aws_lakeformation_resource_lf_tags__table list ->
  table_with_columns:
    aws_lakeformation_resource_lf_tags__table_with_columns list ->
  string ->
  unit
