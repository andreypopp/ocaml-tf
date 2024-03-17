(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_msk_cluster_policy = {
  cluster_arn : string;  (** cluster_arn *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_msk_cluster_policy *)

let aws_msk_cluster_policy ~cluster_arn ~policy __resource_id =
  let __resource_type = "aws_msk_cluster_policy" in
  let __resource = { cluster_arn; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_cluster_policy __resource);
  ()
