(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_account_password_policy = {
  allow_users_to_change_password : bool prop option; [@option]
  hard_expiry : bool prop option; [@option]
  id : string prop option; [@option]
  max_password_age : float prop option; [@option]
  minimum_password_length : float prop option; [@option]
  password_reuse_prevention : float prop option; [@option]
  require_lowercase_characters : bool prop option; [@option]
  require_numbers : bool prop option; [@option]
  require_symbols : bool prop option; [@option]
  require_uppercase_characters : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_account_password_policy) -> ()

let yojson_of_aws_iam_account_password_policy =
  (function
   | {
       allow_users_to_change_password =
         v_allow_users_to_change_password;
       hard_expiry = v_hard_expiry;
       id = v_id;
       max_password_age = v_max_password_age;
       minimum_password_length = v_minimum_password_length;
       password_reuse_prevention = v_password_reuse_prevention;
       require_lowercase_characters = v_require_lowercase_characters;
       require_numbers = v_require_numbers;
       require_symbols = v_require_symbols;
       require_uppercase_characters = v_require_uppercase_characters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_require_uppercase_characters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_uppercase_characters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_symbols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_symbols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_lowercase_characters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_lowercase_characters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_reuse_prevention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_reuse_prevention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_password_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_password_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_password_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_password_age", arg in
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
       let bnds =
         match v_hard_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hard_expiry", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_users_to_change_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_users_to_change_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_account_password_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_account_password_policy

[@@@deriving.end]

let aws_iam_account_password_policy ?allow_users_to_change_password
    ?hard_expiry ?id ?max_password_age ?minimum_password_length
    ?password_reuse_prevention ?require_lowercase_characters
    ?require_numbers ?require_symbols ?require_uppercase_characters
    () : aws_iam_account_password_policy =
  {
    allow_users_to_change_password;
    hard_expiry;
    id;
    max_password_age;
    minimum_password_length;
    password_reuse_prevention;
    require_lowercase_characters;
    require_numbers;
    require_symbols;
    require_uppercase_characters;
  }

type t = {
  tf_name : string;
  allow_users_to_change_password : bool prop;
  expire_passwords : bool prop;
  hard_expiry : bool prop;
  id : string prop;
  max_password_age : float prop;
  minimum_password_length : float prop;
  password_reuse_prevention : float prop;
  require_lowercase_characters : bool prop;
  require_numbers : bool prop;
  require_symbols : bool prop;
  require_uppercase_characters : bool prop;
}

let make ?allow_users_to_change_password ?hard_expiry ?id
    ?max_password_age ?minimum_password_length
    ?password_reuse_prevention ?require_lowercase_characters
    ?require_numbers ?require_symbols ?require_uppercase_characters
    __id =
  let __type = "aws_iam_account_password_policy" in
  let __attrs =
    ({
       tf_name = __id;
       allow_users_to_change_password =
         Prop.computed __type __id "allow_users_to_change_password";
       expire_passwords =
         Prop.computed __type __id "expire_passwords";
       hard_expiry = Prop.computed __type __id "hard_expiry";
       id = Prop.computed __type __id "id";
       max_password_age =
         Prop.computed __type __id "max_password_age";
       minimum_password_length =
         Prop.computed __type __id "minimum_password_length";
       password_reuse_prevention =
         Prop.computed __type __id "password_reuse_prevention";
       require_lowercase_characters =
         Prop.computed __type __id "require_lowercase_characters";
       require_numbers = Prop.computed __type __id "require_numbers";
       require_symbols = Prop.computed __type __id "require_symbols";
       require_uppercase_characters =
         Prop.computed __type __id "require_uppercase_characters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_account_password_policy
        (aws_iam_account_password_policy
           ?allow_users_to_change_password ?hard_expiry ?id
           ?max_password_age ?minimum_password_length
           ?password_reuse_prevention ?require_lowercase_characters
           ?require_numbers ?require_symbols
           ?require_uppercase_characters ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_users_to_change_password ?hard_expiry
    ?id ?max_password_age ?minimum_password_length
    ?password_reuse_prevention ?require_lowercase_characters
    ?require_numbers ?require_symbols ?require_uppercase_characters
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_users_to_change_password ?hard_expiry ?id
      ?max_password_age ?minimum_password_length
      ?password_reuse_prevention ?require_lowercase_characters
      ?require_numbers ?require_symbols ?require_uppercase_characters
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
