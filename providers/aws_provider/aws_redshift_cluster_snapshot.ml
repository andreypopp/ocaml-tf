(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_cluster_snapshot = {
  cluster_identifier : string;  (** cluster_identifier *)
  manual_snapshot_retention_period : float option; [@option]
      (** manual_snapshot_retention_period *)
  snapshot_identifier : string;  (** snapshot_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster_snapshot *)

let aws_redshift_cluster_snapshot ?manual_snapshot_retention_period
    ?tags ~cluster_identifier ~snapshot_identifier __resource_id =
  let __resource_type = "aws_redshift_cluster_snapshot" in
  let __resource =
    {
      cluster_identifier;
      manual_snapshot_retention_period;
      snapshot_identifier;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster_snapshot __resource);
  ()
