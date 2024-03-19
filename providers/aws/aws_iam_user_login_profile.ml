(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?password_length ?password_reset_required
    ?pgp_key ~user __resource_id =
  let __resource_type = "aws_iam_user_login_profile" in
  let __resource =
    aws_iam_user_login_profile ?id ?password_length
      ?password_reset_required ?pgp_key ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_login_profile __resource);
  let __resource_attributes =
    ({
       encrypted_password =
         Prop.computed __resource_type __resource_id
           "encrypted_password";
       id = Prop.computed __resource_type __resource_id "id";
       key_fingerprint =
         Prop.computed __resource_type __resource_id
           "key_fingerprint";
       password =
         Prop.computed __resource_type __resource_id "password";
       password_length =
         Prop.computed __resource_type __resource_id
           "password_length";
       password_reset_required =
         Prop.computed __resource_type __resource_id
           "password_reset_required";
       pgp_key =
         Prop.computed __resource_type __resource_id "pgp_key";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
