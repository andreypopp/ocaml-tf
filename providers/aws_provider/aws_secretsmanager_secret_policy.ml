(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_secretsmanager_secret_policy = {
  block_public_policy : bool prop option; [@option]
      (** block_public_policy *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  secret_arn : string prop;  (** secret_arn *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_policy *)

let aws_secretsmanager_secret_policy ?block_public_policy ?id ~policy
    ~secret_arn __resource_id =
  let __resource_type = "aws_secretsmanager_secret_policy" in
  let __resource = { block_public_policy; id; policy; secret_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_policy __resource);
  ()
