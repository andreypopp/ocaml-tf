(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloud9_environment_membership = {
  environment_id : string;  (** environment_id *)
  permissions : string;  (** permissions *)
  user_arn : string;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_membership *)

let aws_cloud9_environment_membership ~environment_id ~permissions
    ~user_arn __resource_id =
  let __resource_type = "aws_cloud9_environment_membership" in
  let __resource = { environment_id; permissions; user_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloud9_environment_membership __resource);
  ()
