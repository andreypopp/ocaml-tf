(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_access_key = {
  id : string prop option; [@option]  (** id *)
  pgp_key : string prop option; [@option]  (** pgp_key *)
  status : string prop option; [@option]  (** status *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_access_key *)

let aws_iam_access_key ?id ?pgp_key ?status ~user () :
    aws_iam_access_key =
  { id; pgp_key; status; user }

type t = {
  create_date : string prop;
  encrypted_secret : string prop;
  encrypted_ses_smtp_password_v4 : string prop;
  id : string prop;
  key_fingerprint : string prop;
  pgp_key : string prop;
  secret : string prop;
  ses_smtp_password_v4 : string prop;
  status : string prop;
  user : string prop;
}

let register ?tf_module ?id ?pgp_key ?status ~user __resource_id =
  let __resource_type = "aws_iam_access_key" in
  let __resource =
    aws_iam_access_key ?id ?pgp_key ?status ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_access_key __resource);
  let __resource_attributes =
    ({
       create_date =
         Prop.computed __resource_type __resource_id "create_date";
       encrypted_secret =
         Prop.computed __resource_type __resource_id
           "encrypted_secret";
       encrypted_ses_smtp_password_v4 =
         Prop.computed __resource_type __resource_id
           "encrypted_ses_smtp_password_v4";
       id = Prop.computed __resource_type __resource_id "id";
       key_fingerprint =
         Prop.computed __resource_type __resource_id
           "key_fingerprint";
       pgp_key =
         Prop.computed __resource_type __resource_id "pgp_key";
       secret = Prop.computed __resource_type __resource_id "secret";
       ses_smtp_password_v4 =
         Prop.computed __resource_type __resource_id
           "ses_smtp_password_v4";
       status = Prop.computed __resource_type __resource_id "status";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
