(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_user_profile = {
  allow_self_management : bool option; [@option]
      (** allow_self_management *)
  ssh_public_key : string option; [@option]  (** ssh_public_key *)
  ssh_username : string;  (** ssh_username *)
  user_arn : string;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_opsworks_user_profile *)

let aws_opsworks_user_profile ?allow_self_management ?ssh_public_key
    ~ssh_username ~user_arn __resource_id =
  let __resource_type = "aws_opsworks_user_profile" in
  let __resource =
    { allow_self_management; ssh_public_key; ssh_username; user_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_user_profile __resource);
  ()
