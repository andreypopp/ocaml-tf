(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?block_public_policy ?id ~policy ~secret_arn __id =
  let __type = "aws_secretsmanager_secret_policy" in
  let __attrs =
    ({
       block_public_policy =
         Prop.computed __type __id "block_public_policy";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       secret_arn = Prop.computed __type __id "secret_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret_policy
        (aws_secretsmanager_secret_policy ?block_public_policy ?id
           ~policy ~secret_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?block_public_policy ?id ~policy ~secret_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?block_public_policy ?id ~policy ~secret_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
