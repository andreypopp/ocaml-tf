(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmcontacts_plan__stage__target__channel_target_info = {
  contact_channel_id : string;  (** contact_channel_id *)
  retry_interval_in_minutes : float option; [@option]
      (** retry_interval_in_minutes *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_plan__stage__target__channel_target_info *)

type aws_ssmcontacts_plan__stage__target__contact_target_info = {
  contact_id : string option; [@option]  (** contact_id *)
  is_essential : bool;  (** is_essential *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_plan__stage__target__contact_target_info *)

type aws_ssmcontacts_plan__stage__target = {
  channel_target_info :
    aws_ssmcontacts_plan__stage__target__channel_target_info list;
  contact_target_info :
    aws_ssmcontacts_plan__stage__target__contact_target_info list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_plan__stage__target *)

type aws_ssmcontacts_plan__stage = {
  duration_in_minutes : float;  (** duration_in_minutes *)
  target : aws_ssmcontacts_plan__stage__target list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_plan__stage *)

type aws_ssmcontacts_plan = {
  contact_id : string;  (** contact_id *)
  id : string option; [@option]  (** id *)
  stage : aws_ssmcontacts_plan__stage list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_plan *)

let aws_ssmcontacts_plan ?id ~contact_id ~stage __resource_id =
  let __resource_type = "aws_ssmcontacts_plan" in
  let __resource = { contact_id; id; stage } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_plan __resource);
  ()
