(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_secretsmanager_secret_policy = {
  block_public_policy : bool prop option; [@option]
  id : string prop option; [@option]
  policy : string prop;
  secret_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_secret_policy) -> ()

let yojson_of_aws_secretsmanager_secret_policy =
  (function
   | {
       block_public_policy = v_block_public_policy;
       id = v_id;
       policy = v_policy;
       secret_arn = v_secret_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_arn in
         ("secret_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
         match v_block_public_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "block_public_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_secretsmanager_secret_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_secretsmanager_secret_policy

[@@@deriving.end]

let aws_secretsmanager_secret_policy ?block_public_policy ?id ~policy
    ~secret_arn () : aws_secretsmanager_secret_policy =
  { block_public_policy; id; policy; secret_arn }

type t = {
  tf_name : string;
  block_public_policy : bool prop;
  id : string prop;
  policy : string prop;
  secret_arn : string prop;
}

let make ?block_public_policy ?id ~policy ~secret_arn __id =
  let __type = "aws_secretsmanager_secret_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
