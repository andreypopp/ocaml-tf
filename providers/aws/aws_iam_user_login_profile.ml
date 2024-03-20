(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_login_profile = {
  id : string prop option; [@option]
  password_length : float prop option; [@option]
  password_reset_required : bool prop option; [@option]
  pgp_key : string prop option; [@option]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_user_login_profile) -> ()

let yojson_of_aws_iam_user_login_profile =
  (function
   | {
       id = v_id;
       password_length = v_password_length;
       password_reset_required = v_password_reset_required;
       pgp_key = v_pgp_key;
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
         match v_pgp_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pgp_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_reset_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_reset_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_length", arg in
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
    : aws_iam_user_login_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_user_login_profile

[@@@deriving.end]

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
