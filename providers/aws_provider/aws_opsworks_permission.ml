(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_opsworks_permission = {
  stack_id : string;  (** stack_id *)
  user_arn : string;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_opsworks_permission *)

let aws_opsworks_permission ~stack_id ~user_arn __resource_id =
  let __resource_type = "aws_opsworks_permission" in
  let __resource = { stack_id; user_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_permission __resource);
  ()
