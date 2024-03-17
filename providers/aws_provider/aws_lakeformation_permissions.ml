(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lakeformation_permissions__data_cells_filter = {
  database_name : string;  (** database_name *)
  name : string;  (** name *)
  table_catalog_id : string;  (** table_catalog_id *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__data_cells_filter *)

type aws_lakeformation_permissions__data_location = {
  arn : string;  (** arn *)
  catalog_id : string option; [@option]  (** catalog_id *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__data_location *)

type aws_lakeformation_permissions__database = {
  catalog_id : string option; [@option]  (** catalog_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__database *)

type aws_lakeformation_permissions__lf_tag = {
  catalog_id : string option; [@option]  (** catalog_id *)
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__lf_tag *)

type aws_lakeformation_permissions__lf_tag_policy__expression = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__lf_tag_policy__expression *)

type aws_lakeformation_permissions__lf_tag_policy = {
  catalog_id : string option; [@option]  (** catalog_id *)
  resource_type : string;  (** resource_type *)
  expression :
    aws_lakeformation_permissions__lf_tag_policy__expression list;
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__lf_tag_policy *)

type aws_lakeformation_permissions__table = {
  catalog_id : string option; [@option]  (** catalog_id *)
  database_name : string;  (** database_name *)
  name : string option; [@option]  (** name *)
  wildcard : bool option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__table *)

type aws_lakeformation_permissions__table_with_columns = {
  catalog_id : string option; [@option]  (** catalog_id *)
  column_names : string list option; [@option]  (** column_names *)
  database_name : string;  (** database_name *)
  excluded_column_names : string list option; [@option]
      (** excluded_column_names *)
  name : string;  (** name *)
  wildcard : bool option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions__table_with_columns *)

type aws_lakeformation_permissions = {
  catalog_id : string option; [@option]  (** catalog_id *)
  catalog_resource : bool option; [@option]  (** catalog_resource *)
  permissions : string list;  (** permissions *)
  principal : string;  (** principal *)
  data_cells_filter :
    aws_lakeformation_permissions__data_cells_filter list;
  data_location : aws_lakeformation_permissions__data_location list;
  database : aws_lakeformation_permissions__database list;
  lf_tag : aws_lakeformation_permissions__lf_tag list;
  lf_tag_policy : aws_lakeformation_permissions__lf_tag_policy list;
  table : aws_lakeformation_permissions__table list;
  table_with_columns :
    aws_lakeformation_permissions__table_with_columns list;
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions *)

let aws_lakeformation_permissions ?catalog_id ?catalog_resource
    ~permissions ~principal ~data_cells_filter ~data_location
    ~database ~lf_tag ~lf_tag_policy ~table ~table_with_columns
    __resource_id =
  let __resource_type = "aws_lakeformation_permissions" in
  let __resource =
    {
      catalog_id;
      catalog_resource;
      permissions;
      principal;
      data_cells_filter;
      data_location;
      database;
      lf_tag;
      lf_tag_policy;
      table;
      table_with_columns;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_permissions __resource);
  ()
