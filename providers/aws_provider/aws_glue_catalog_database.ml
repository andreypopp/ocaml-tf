(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_catalog_database__create_table_default_permission__principal = {
  data_lake_principal_identifier : string option; [@option]
      (** data_lake_principal_identifier *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_database__create_table_default_permission__principal *)

type aws_glue_catalog_database__create_table_default_permission = {
  permissions : string list option; [@option]  (** permissions *)
  principal :
    aws_glue_catalog_database__create_table_default_permission__principal
    list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_database__create_table_default_permission *)

type aws_glue_catalog_database__federated_database = {
  connection_name : string option; [@option]  (** connection_name *)
  identifier : string option; [@option]  (** identifier *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_database__federated_database *)

type aws_glue_catalog_database__target_database = {
  catalog_id : string;  (** catalog_id *)
  database_name : string;  (** database_name *)
  region : string option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_database__target_database *)

type aws_glue_catalog_database = {
  catalog_id : string option; [@option]  (** catalog_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  location_uri : string option; [@option]  (** location_uri *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  create_table_default_permission :
    aws_glue_catalog_database__create_table_default_permission list;
  federated_database :
    aws_glue_catalog_database__federated_database list;
  target_database : aws_glue_catalog_database__target_database list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_database *)

let aws_glue_catalog_database ?catalog_id ?description ?id
    ?location_uri ?parameters ?tags ?tags_all ~name
    ~create_table_default_permission ~federated_database
    ~target_database __resource_id =
  let __resource_type = "aws_glue_catalog_database" in
  let __resource =
    {
      catalog_id;
      description;
      id;
      location_uri;
      name;
      parameters;
      tags;
      tags_all;
      create_table_default_permission;
      federated_database;
      target_database;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_catalog_database __resource);
  ()
