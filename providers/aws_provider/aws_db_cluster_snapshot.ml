(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_db_cluster_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_db_cluster_snapshot__timeouts *)

type aws_db_cluster_snapshot = {
  db_cluster_identifier : string;  (** db_cluster_identifier *)
  db_cluster_snapshot_identifier : string;
      (** db_cluster_snapshot_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_db_cluster_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_cluster_snapshot *)

let aws_db_cluster_snapshot ?tags ?timeouts ~db_cluster_identifier
    ~db_cluster_snapshot_identifier __resource_id =
  let __resource_type = "aws_db_cluster_snapshot" in
  let __resource =
    {
      db_cluster_identifier;
      db_cluster_snapshot_identifier;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_cluster_snapshot __resource);
  ()
