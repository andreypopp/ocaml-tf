(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_neptune_global_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_neptune_global_cluster__timeouts *)

type aws_neptune_global_cluster__global_cluster_members = {
  db_cluster_arn : string;  (** db_cluster_arn *)
  is_writer : bool;  (** is_writer *)
}
[@@deriving yojson_of]

type aws_neptune_global_cluster = {
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  global_cluster_identifier : string;
      (** global_cluster_identifier *)
  timeouts : aws_neptune_global_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_global_cluster *)

let aws_neptune_global_cluster ?deletion_protection ?timeouts
    ~global_cluster_identifier __resource_id =
  let __resource_type = "aws_neptune_global_cluster" in
  let __resource =
    { deletion_protection; global_cluster_identifier; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_global_cluster __resource);
  ()
