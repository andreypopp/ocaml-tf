(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_paymentcryptography_key_alias = {
  alias_name : string prop;
  key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_paymentcryptography_key_alias) -> ()

let yojson_of_aws_paymentcryptography_key_alias =
  (function
   | { alias_name = v_alias_name; key_arn = v_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias_name in
         ("alias_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_paymentcryptography_key_alias ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_paymentcryptography_key_alias

[@@@deriving.end]

let aws_paymentcryptography_key_alias ?key_arn ~alias_name () :
    aws_paymentcryptography_key_alias =
  { alias_name; key_arn }

type t = {
  tf_name : string;
  alias_name : string prop;
  id : string prop;
  key_arn : string prop;
}

let make ?key_arn ~alias_name __id =
  let __type = "aws_paymentcryptography_key_alias" in
  let __attrs =
    ({
       tf_name = __id;
       alias_name = Prop.computed __type __id "alias_name";
       id = Prop.computed __type __id "id";
       key_arn = Prop.computed __type __id "key_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_paymentcryptography_key_alias
        (aws_paymentcryptography_key_alias ?key_arn ~alias_name ());
    attrs = __attrs;
  }

let register ?tf_module ?key_arn ~alias_name __id =
  let (r : _ Tf_core.resource) = make ?key_arn ~alias_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
