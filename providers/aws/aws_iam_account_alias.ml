(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_account_alias = {
  account_alias : string prop;  (** account_alias *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_iam_account_alias *)

let aws_iam_account_alias ?id ~account_alias () :
    aws_iam_account_alias =
  { account_alias; id }

type t = { account_alias : string prop; id : string prop }

let register ?tf_module ?id ~account_alias __resource_id =
  let __resource_type = "aws_iam_account_alias" in
  let __resource = aws_iam_account_alias ?id ~account_alias () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_account_alias __resource);
  let __resource_attributes =
    ({
       account_alias =
         Prop.computed __resource_type __resource_id "account_alias";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
