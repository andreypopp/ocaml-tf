(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type database = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** database *)

type lf_tag = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** lf_tag *)

type table = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  name : string prop option; [@option]  (** name *)
  wildcard : bool prop option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** table *)

type table_with_columns = {
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
(** table_with_columns *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lakeformation_resource_lf_tags = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  id : string prop option; [@option]  (** id *)
  database : database list;
  lf_tag : lf_tag list;
  table : table list;
  table_with_columns : table_with_columns list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lakeformation_resource_lf_tags *)

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

let aws_lakeformation_resource_lf_tags ?catalog_id ?id ?timeouts
    ~database ~lf_tag ~table ~table_with_columns () :
    aws_lakeformation_resource_lf_tags =
  {
    catalog_id;
    id;
    database;
    lf_tag;
    table;
    table_with_columns;
    timeouts;
  }

type t = { catalog_id : string prop; id : string prop }

let register ?tf_module ?catalog_id ?id ?timeouts ~database ~lf_tag
    ~table ~table_with_columns __resource_id =
  let __resource_type = "aws_lakeformation_resource_lf_tags" in
  let __resource =
    aws_lakeformation_resource_lf_tags ?catalog_id ?id ?timeouts
      ~database ~lf_tag ~table ~table_with_columns ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
