(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_user = {
  aws_account_id: string prop option; [@option] (** aws_account_id *)
  email: string prop;  (** email *)
  iam_arn: string prop option; [@option] (** iam_arn *)
  id: string prop option; [@option] (** id *)
  identity_type: string prop;  (** identity_type *)
  namespace: string prop option; [@option] (** namespace *)
  session_name: string prop option; [@option] (** session_name *)
  user_name: string prop option; [@option] (** user_name *)
  user_role: string prop;  (** user_role *)
} [@@deriving yojson_of]
(** aws_quicksight_user *)

let aws_quicksight_user ?aws_account_id ?iam_arn ?id ?namespace ?session_name ?user_name  ~email ~identity_type ~user_role  __resource_id =
  let __resource_type = "aws_quicksight_user" in
  let __resource = {
    aws_account_id;
    email;
    iam_arn;
    id;
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

