(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_cluster_snapshot = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  manual_snapshot_retention_period : float prop option; [@option]
      (** manual_snapshot_retention_period *)
  snapshot_identifier : string prop;  (** snapshot_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster_snapshot *)

let aws_redshift_cluster_snapshot ?id
    ?manual_snapshot_retention_period ?tags ?tags_all
    ~cluster_identifier ~snapshot_identifier __resource_id =
  let __resource_type = "aws_redshift_cluster_snapshot" in
  let __resource =
    {
      cluster_identifier;
      id;
      manual_snapshot_retention_period;
      snapshot_identifier;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster_snapshot __resource);
  ()
