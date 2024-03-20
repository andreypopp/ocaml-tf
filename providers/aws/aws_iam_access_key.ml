(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?pgp_key ?status ~user __id =
  let __type = "aws_iam_access_key" in
  let __attrs =
    ({
       create_date = Prop.computed __type __id "create_date";
       encrypted_secret =
         Prop.computed __type __id "encrypted_secret";
       encrypted_ses_smtp_password_v4 =
         Prop.computed __type __id "encrypted_ses_smtp_password_v4";
       id = Prop.computed __type __id "id";
       key_fingerprint = Prop.computed __type __id "key_fingerprint";
       pgp_key = Prop.computed __type __id "pgp_key";
       secret = Prop.computed __type __id "secret";
       ses_smtp_password_v4 =
         Prop.computed __type __id "ses_smtp_password_v4";
       status = Prop.computed __type __id "status";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_access_key
        (aws_iam_access_key ?id ?pgp_key ?status ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?pgp_key ?status ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ?pgp_key ?status ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
