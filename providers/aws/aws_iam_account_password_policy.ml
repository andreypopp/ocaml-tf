(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_account_password_policy = {
  allow_users_to_change_password : bool prop option; [@option]
      (** allow_users_to_change_password *)
  hard_expiry : bool prop option; [@option]  (** hard_expiry *)
  id : string prop option; [@option]  (** id *)
  max_password_age : float prop option; [@option]
      (** max_password_age *)
  minimum_password_length : float prop option; [@option]
      (** minimum_password_length *)
  password_reuse_prevention : float prop option; [@option]
      (** password_reuse_prevention *)
  require_lowercase_characters : bool prop option; [@option]
      (** require_lowercase_characters *)
  require_numbers : bool prop option; [@option]
      (** require_numbers *)
  require_symbols : bool prop option; [@option]
      (** require_symbols *)
  require_uppercase_characters : bool prop option; [@option]
      (** require_uppercase_characters *)
}
[@@deriving yojson_of]
(** aws_iam_account_password_policy *)

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
