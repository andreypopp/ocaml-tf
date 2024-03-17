(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloud9_environment_membership = {
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_membership *)

let aws_cloud9_environment_membership ?id ~environment_id
    ~permissions ~user_arn __resource_id =
  let __resource_type = "aws_cloud9_environment_membership" in
  let __resource = { environment_id; id; permissions; user_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloud9_environment_membership __resource);
  ()
