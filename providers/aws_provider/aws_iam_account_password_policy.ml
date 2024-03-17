(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    __resource_id =
  let __resource_type = "aws_iam_account_password_policy" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_account_password_policy __resource);
  ()
