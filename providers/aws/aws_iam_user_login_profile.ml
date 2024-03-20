(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_login_profile = {
  id : string prop option; [@option]  (** id *)
  password_length : float prop option; [@option]
      (** password_length *)
  password_reset_required : bool prop option; [@option]
      (** password_reset_required *)
  pgp_key : string prop option; [@option]  (** pgp_key *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_login_profile *)

let aws_iam_user_login_profile ?id ?password_length
    ?password_reset_required ?pgp_key ~user () :
    aws_iam_user_login_profile =
  { id; password_length; password_reset_required; pgp_key; user }

type t = {
  encrypted_password : string prop;
  id : string prop;
  key_fingerprint : string prop;
  password : string prop;
  password_length : float prop;
  password_reset_required : bool prop;
  pgp_key : string prop;
  user : string prop;
}

let make ?id ?password_length ?password_reset_required ?pgp_key ~user
    __id =
  let __type = "aws_iam_user_login_profile" in
  let __attrs =
    ({
       encrypted_password =
         Prop.computed __type __id "encrypted_password";
       id = Prop.computed __type __id "id";
       key_fingerprint = Prop.computed __type __id "key_fingerprint";
       password = Prop.computed __type __id "password";
       password_length = Prop.computed __type __id "password_length";
       password_reset_required =
         Prop.computed __type __id "password_reset_required";
       pgp_key = Prop.computed __type __id "pgp_key";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user_login_profile
        (aws_iam_user_login_profile ?id ?password_length
           ?password_reset_required ?pgp_key ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?password_length ?password_reset_required
    ?pgp_key ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ?password_length ?password_reset_required ?pgp_key ~user
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
