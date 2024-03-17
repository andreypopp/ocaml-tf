(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lakeformation_resource_lf_tags__database = {
  catalog_id : string option; [@option]  (** catalog_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__database *)

type aws_lakeformation_resource_lf_tags__lf_tag = {
  catalog_id : string option; [@option]  (** catalog_id *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__lf_tag *)

type aws_lakeformation_resource_lf_tags__table = {
  catalog_id : string option; [@option]  (** catalog_id *)
  database_name : string;  (** database_name *)
  name : string option; [@option]  (** name *)
  wildcard : bool option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__table *)

type aws_lakeformation_resource_lf_tags__table_with_columns = {
  catalog_id : string option; [@option]  (** catalog_id *)
  column_names : string list option; [@option]  (** column_names *)
  database_name : string;  (** database_name *)
  excluded_column_names : string list option; [@option]
      (** excluded_column_names *)
  name : string;  (** name *)
  wildcard : bool option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__table_with_columns *)

type aws_lakeformation_resource_lf_tags__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__timeouts *)

type aws_lakeformation_resource_lf_tags = {
  database : aws_lakeformation_resource_lf_tags__database list;
  lf_tag : aws_lakeformation_resource_lf_tags__lf_tag list;
  table : aws_lakeformation_resource_lf_tags__table list;
  table_with_columns :
    aws_lakeformation_resource_lf_tags__table_with_columns list;
  timeouts : aws_lakeformation_resource_lf_tags__timeouts option;
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags *)

let aws_lakeformation_resource_lf_tags ?timeouts ~database ~lf_tag
    ~table ~table_with_columns __resource_id =
  let __resource_type = "aws_lakeformation_resource_lf_tags" in
  let __resource =
    { database; lf_tag; table; table_with_columns; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_resource_lf_tags __resource);
  ()
