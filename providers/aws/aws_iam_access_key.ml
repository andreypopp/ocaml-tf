(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_access_key = {
  id : string prop option; [@option]
  pgp_key : string prop option; [@option]
  status : string prop option; [@option]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_access_key) -> ()

let yojson_of_aws_iam_access_key =
  (function
   | {
       id = v_id;
       pgp_key = v_pgp_key;
       status = v_status;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pgp_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pgp_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_access_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_access_key

[@@@deriving.end]

let aws_iam_access_key ?id ?pgp_key ?status ~user () :
    aws_iam_access_key =
  { id; pgp_key; status; user }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
