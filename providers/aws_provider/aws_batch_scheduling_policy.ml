(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_batch_scheduling_policy__fair_share_policy__share_distribution = {
  share_identifier : string prop;  (** share_identifier *)
  weight_factor : float prop option; [@option]  (** weight_factor *)
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy__fair_share_policy__share_distribution *)

type aws_batch_scheduling_policy__fair_share_policy = {
  compute_reservation : float prop option; [@option]
      (** compute_reservation *)
  share_decay_seconds : float prop option; [@option]
      (** share_decay_seconds *)
  share_distribution :
    aws_batch_scheduling_policy__fair_share_policy__share_distribution
    list;
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy__fair_share_policy *)

type aws_batch_scheduling_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  fair_share_policy :
    aws_batch_scheduling_policy__fair_share_policy list;
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_batch_scheduling_policy ?id ?tags ?tags_all ~name
    ~fair_share_policy __resource_id =
  let __resource_type = "aws_batch_scheduling_policy" in
  let __resource =
    ({ id; name; tags; tags_all; fair_share_policy }
      : aws_batch_scheduling_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_scheduling_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
