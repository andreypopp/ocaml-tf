(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_account_public_access_block = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_account_public_access_block) -> ()

let yojson_of_aws_s3_account_public_access_block =
  (function
   | { account_id = v_account_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3_account_public_access_block ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_account_public_access_block

[@@@deriving.end]

let aws_s3_account_public_access_block ?account_id ?id () :
    aws_s3_account_public_access_block =
  { account_id; id }

type t = {
  account_id : string prop;
  block_public_acls : bool prop;
  block_public_policy : bool prop;
  id : string prop;
  ignore_public_acls : bool prop;
  restrict_public_buckets : bool prop;
}

let make ?account_id ?id __id =
  let __type = "aws_s3_account_public_access_block" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       block_public_acls =
         Prop.computed __type __id "block_public_acls";
       block_public_policy =
         Prop.computed __type __id "block_public_policy";
       id = Prop.computed __type __id "id";
       ignore_public_acls =
         Prop.computed __type __id "ignore_public_acls";
       restrict_public_buckets =
         Prop.computed __type __id "restrict_public_buckets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_account_public_access_block
        (aws_s3_account_public_access_block ?account_id ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id __id =
  let (r : _ Tf_core.resource) = make ?account_id ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
