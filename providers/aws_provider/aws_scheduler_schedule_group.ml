(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_scheduler_schedule_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule_group__timeouts *)

type aws_scheduler_schedule_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_scheduler_schedule_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule_group *)

let aws_scheduler_schedule_group ?id ?name ?name_prefix ?tags
    ?tags_all ?timeouts __resource_id =
  let __resource_type = "aws_scheduler_schedule_group" in
  let __resource =
    { id; name; name_prefix; tags; tags_all; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_scheduler_schedule_group __resource);
  ()
