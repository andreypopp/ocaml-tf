(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_batch_scheduling_policy__fair_share_policy__share_distribution = {
  share_identifier : string;  (** share_identifier *)
  weight_factor : float option; [@option]  (** weight_factor *)
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy__fair_share_policy__share_distribution *)

type aws_batch_scheduling_policy__fair_share_policy = {
  compute_reservation : float option; [@option]
      (** compute_reservation *)
  share_decay_seconds : float option; [@option]
      (** share_decay_seconds *)
  share_distribution :
    aws_batch_scheduling_policy__fair_share_policy__share_distribution
    list;
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy__fair_share_policy *)

type aws_batch_scheduling_policy = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  fair_share_policy :
    aws_batch_scheduling_policy__fair_share_policy list;
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy *)

let aws_batch_scheduling_policy ?tags ~name ~fair_share_policy
    __resource_id =
  let __resource_type = "aws_batch_scheduling_policy" in
  let __resource = { name; tags; fair_share_policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_scheduling_policy __resource);
  ()
