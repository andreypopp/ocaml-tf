(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_account_alias = {
  account_alias : string;  (** account_alias *)
}
[@@deriving yojson_of]
(** aws_iam_account_alias *)

let aws_iam_account_alias ~account_alias __resource_id =
  let __resource_type = "aws_iam_account_alias" in
  let __resource = { account_alias } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_account_alias __resource);
  ()
