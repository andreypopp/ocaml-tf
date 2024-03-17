(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_scheduler_schedule_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule_group__timeouts *)

type aws_scheduler_schedule_group = {
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_scheduler_schedule_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule_group *)

let aws_scheduler_schedule_group ?tags ?timeouts __resource_id =
  let __resource_type = "aws_scheduler_schedule_group" in
  let __resource = { tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_scheduler_schedule_group __resource);
  ()
