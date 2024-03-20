(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_user = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  email: string prop;  (** email *)
  iam_arn: string  prop option; [@option] (** iam_arn *)
  id: string  prop option; [@option] (** id *)
  identity_type: string prop;  (** identity_type *)
  namespace: string  prop option; [@option] (** namespace *)
  session_name: string  prop option; [@option] (** session_name *)
  user_name: string  prop option; [@option] (** user_name *)
  user_role: string prop;  (** user_role *)
} [@@deriving yojson_of]
(** aws_quicksight_user *)

let aws_quicksight_user ?aws_account_id ?iam_arn ?id ?namespace ?session_name ?user_name ~email ~identity_type ~user_role () =
  ({
    aws_account_id;
    email;
    iam_arn;
    id;
    identity_type;
    namespace;
    session_name;
    user_name;
    user_role;
  } : aws_quicksight_user);;

type t = {
  arn: string prop;
  aws_account_id: string prop;
  email: string prop;
  iam_arn: string prop;
  id: string prop;
  identity_type: string prop;
  namespace: string prop;
  session_name: string prop;
  user_name: string prop;
  user_role: string prop;
}

let make ?aws_account_id ?iam_arn ?id ?namespace ?session_name ?user_name ~email ~identity_type ~user_role __id =
  let __type = "aws_quicksight_user" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    email = Prop.computed __type __id "email";
    iam_arn = Prop.computed __type __id "iam_arn";
    id = Prop.computed __type __id "id";
    identity_type = Prop.computed __type __id "identity_type";
    namespace = Prop.computed __type __id "namespace";
    session_name = Prop.computed __type __id "session_name";
    user_name = Prop.computed __type __id "user_name";
    user_role = Prop.computed __type __id "user_role";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_user (aws_quicksight_user ?aws_account_id ?iam_arn ?id ?namespace ?session_name ?user_name ~email ~identity_type ~user_role ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?iam_arn ?id ?namespace ?session_name ?user_name ~email ~identity_type ~user_role __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?iam_arn ?id ?namespace ?session_name ?user_name ~email ~identity_type ~user_role __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

