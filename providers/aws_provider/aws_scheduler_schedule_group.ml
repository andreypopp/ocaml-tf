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

type t = {
  arn : string prop;
  creation_date : string prop;
  id : string prop;
  last_modification_date : string prop;
  name : string prop;
  name_prefix : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_scheduler_schedule_group ?id ?name ?name_prefix ?tags
    ?tags_all ?timeouts __resource_id =
  let __resource_type = "aws_scheduler_schedule_group" in
  let __resource =
    ({ id; name; name_prefix; tags; tags_all; timeouts }
      : aws_scheduler_schedule_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_scheduler_schedule_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       id = Prop.computed __resource_type __resource_id "id";
       last_modification_date =
         Prop.computed __resource_type __resource_id
           "last_modification_date";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
