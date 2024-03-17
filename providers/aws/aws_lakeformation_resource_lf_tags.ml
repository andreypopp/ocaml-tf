(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lakeformation_resource_lf_tags__database = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__database *)

type aws_lakeformation_resource_lf_tags__lf_tag = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__lf_tag *)

type aws_lakeformation_resource_lf_tags__table = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  name : string prop option; [@option]  (** name *)
  wildcard : bool prop option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__table *)

type aws_lakeformation_resource_lf_tags__table_with_columns = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  column_names : string prop list option; [@option]
      (** column_names *)
  database_name : string prop;  (** database_name *)
  excluded_column_names : string prop list option; [@option]
      (** excluded_column_names *)
  name : string prop;  (** name *)
  wildcard : bool prop option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__table_with_columns *)

type aws_lakeformation_resource_lf_tags__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags__timeouts *)

type aws_lakeformation_resource_lf_tags = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  id : string prop option; [@option]  (** id *)
  database : aws_lakeformation_resource_lf_tags__database list;
  lf_tag : aws_lakeformation_resource_lf_tags__lf_tag list;
  table : aws_lakeformation_resource_lf_tags__table list;
  table_with_columns :
    aws_lakeformation_resource_lf_tags__table_with_columns list;
  timeouts : aws_lakeformation_resource_lf_tags__timeouts option;
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags *)

type t = { catalog_id : string prop; id : string prop }

let aws_lakeformation_resource_lf_tags ?catalog_id ?id ?timeouts
    ~database ~lf_tag ~table ~table_with_columns __resource_id =
  let __resource_type = "aws_lakeformation_resource_lf_tags" in
  let __resource =
    ({
       catalog_id;
       id;
       database;
       lf_tag;
       table;
       table_with_columns;
       timeouts;
     }
      : aws_lakeformation_resource_lf_tags)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_resource_lf_tags __resource);
  let __resource_attributes =
    ({
       catalog_id =
         Prop.computed __resource_type __resource_id "catalog_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
