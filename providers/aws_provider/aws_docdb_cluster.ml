(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_docdb_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_docdb_cluster__timeouts *)

type aws_docdb_cluster = {
  allow_major_version_upgrade : bool option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  backup_retention_period : float option; [@option]
      (** backup_retention_period *)
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  enabled_cloudwatch_logs_exports : string list option; [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string option; [@option]  (** engine *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  global_cluster_identifier : string option; [@option]
      (** global_cluster_identifier *)
  master_password : string option; [@option]  (** master_password *)
  port : float option; [@option]  (** port *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool option; [@option]
      (** storage_encrypted *)
  storage_type : string option; [@option]  (** storage_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_docdb_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_cluster *)

let aws_docdb_cluster ?allow_major_version_upgrade ?apply_immediately
    ?backup_retention_period ?deletion_protection
    ?enabled_cloudwatch_logs_exports ?engine
    ?final_snapshot_identifier ?global_cluster_identifier
    ?master_password ?port ?skip_final_snapshot ?snapshot_identifier
    ?storage_encrypted ?storage_type ?tags ?timeouts __resource_id =
  let __resource_type = "aws_docdb_cluster" in
  let __resource =
    {
      allow_major_version_upgrade;
      apply_immediately;
      backup_retention_period;
      deletion_protection;
      enabled_cloudwatch_logs_exports;
      engine;
      final_snapshot_identifier;
      global_cluster_identifier;
      master_password;
      port;
      skip_final_snapshot;
      snapshot_identifier;
      storage_encrypted;
      storage_type;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_cluster __resource);
  ()