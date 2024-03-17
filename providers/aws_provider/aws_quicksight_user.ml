(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_user = {
  email: string;  (** email *)
  iam_arn: string option; [@option] (** iam_arn *)
  identity_type: string;  (** identity_type *)
  namespace: string option; [@option] (** namespace *)
  session_name: string option; [@option] (** session_name *)
  user_name: string option; [@option] (** user_name *)
  user_role: string;  (** user_role *)
} [@@deriving yojson_of]
(** aws_quicksight_user *)

let aws_quicksight_user ?iam_arn ?namespace ?session_name ?user_name  ~email ~identity_type ~user_role  __resource_id =
  let __resource_type = "aws_quicksight_user" in
  let __resource = {
    email;
    iam_arn;
    identity_type;
    namespace;
    session_name;
    user_name;
    user_role;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_user __resource);
  ()
  ;;

