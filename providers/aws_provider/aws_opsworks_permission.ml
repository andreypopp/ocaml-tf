(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_permission = {
  allow_ssh : bool prop option; [@option]  (** allow_ssh *)
  allow_sudo : bool prop option; [@option]  (** allow_sudo *)
  id : string prop option; [@option]  (** id *)
  level : string prop option; [@option]  (** level *)
  stack_id : string prop;  (** stack_id *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_opsworks_permission *)

type t = {
  allow_ssh : bool prop;
  allow_sudo : bool prop;
  id : string prop;
  level : string prop;
  stack_id : string prop;
  user_arn : string prop;
}

let aws_opsworks_permission ?allow_ssh ?allow_sudo ?id ?level
    ~stack_id ~user_arn __resource_id =
  let __resource_type = "aws_opsworks_permission" in
  let __resource =
    ({ allow_ssh; allow_sudo; id; level; stack_id; user_arn }
      : aws_opsworks_permission)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_permission __resource);
  let __resource_attributes =
    ({
       allow_ssh =
         Prop.computed __resource_type __resource_id "allow_ssh";
       allow_sudo =
         Prop.computed __resource_type __resource_id "allow_sudo";
       id = Prop.computed __resource_type __resource_id "id";
       level = Prop.computed __resource_type __resource_id "level";
       stack_id =
         Prop.computed __resource_type __resource_id "stack_id";
       user_arn =
         Prop.computed __resource_type __resource_id "user_arn";
     }
      : t)
  in
  __resource_attributes
