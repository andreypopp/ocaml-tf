(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_cluster_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_db_cluster_snapshot__timeouts *)

type aws_db_cluster_snapshot = {
  db_cluster_identifier : string prop;  (** db_cluster_identifier *)
  db_cluster_snapshot_identifier : string prop;
      (** db_cluster_snapshot_identifier *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_db_cluster_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_cluster_snapshot *)

let aws_db_cluster_snapshot ?id ?tags ?tags_all ?timeouts
    ~db_cluster_identifier ~db_cluster_snapshot_identifier
    __resource_id =
  let __resource_type = "aws_db_cluster_snapshot" in
  let __resource =
    {
      db_cluster_identifier;
      db_cluster_snapshot_identifier;
      id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_cluster_snapshot __resource);
  ()
