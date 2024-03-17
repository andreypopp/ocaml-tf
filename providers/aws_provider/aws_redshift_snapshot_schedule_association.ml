(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_schedule_association = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  schedule_identifier : string prop;  (** schedule_identifier *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule_association *)

let aws_redshift_snapshot_schedule_association ?id
    ~cluster_identifier ~schedule_identifier __resource_id =
  let __resource_type =
    "aws_redshift_snapshot_schedule_association"
  in
  let __resource = { cluster_identifier; id; schedule_identifier } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_schedule_association __resource);
  ()
