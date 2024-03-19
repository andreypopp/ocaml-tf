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
    ~secret_arn () : aws_secretsmanager_secret_policy =
  { block_public_policy; id; policy; secret_arn }

type t = {
  block_public_policy : bool prop;
  id : string prop;
  policy : string prop;
  secret_arn : string prop;
}

let register ?tf_module ?block_public_policy ?id ~policy ~secret_arn
    __resource_id =
  let __resource_type = "aws_secretsmanager_secret_policy" in
  let __resource =
    aws_secretsmanager_secret_policy ?block_public_policy ?id ~policy
      ~secret_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_policy __resource);
  let __resource_attributes =
    ({
       block_public_policy =
         Prop.computed __resource_type __resource_id
           "block_public_policy";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       secret_arn =
         Prop.computed __resource_type __resource_id "secret_arn";
     }
      : t)
  in
  __resource_attributes
