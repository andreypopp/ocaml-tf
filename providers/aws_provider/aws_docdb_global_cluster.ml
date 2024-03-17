(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_docdb_global_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_docdb_global_cluster__timeouts *)

type aws_docdb_global_cluster__global_cluster_members = {
  db_cluster_arn : string;  (** db_cluster_arn *)
  is_writer : bool;  (** is_writer *)
}
[@@deriving yojson_of]

type aws_docdb_global_cluster = {
  database_name : string option; [@option]  (** database_name *)
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  engine : string option; [@option]  (** engine *)
  engine_version : string option; [@option]  (** engine_version *)
  global_cluster_identifier : string;
      (** global_cluster_identifier *)
  id : string option; [@option]  (** id *)
  source_db_cluster_identifier : string option; [@option]
      (** source_db_cluster_identifier *)
  storage_encrypted : bool option; [@option]
      (** storage_encrypted *)
  timeouts : aws_docdb_global_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_global_cluster *)

let aws_docdb_global_cluster ?database_name ?deletion_protection
    ?engine ?engine_version ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier
    __resource_id =
  let __resource_type = "aws_docdb_global_cluster" in
  let __resource =
    {
      database_name;
      deletion_protection;
      engine;
      engine_version;
      global_cluster_identifier;
      id;
      source_db_cluster_identifier;
      storage_encrypted;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_global_cluster __resource);
  ()
