(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_parameter = {
  id : string prop option; [@option]
  name : string prop;
  with_decryption : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_parameter) -> ()

let yojson_of_aws_ssm_parameter =
  (function
   | {
       id = v_id;
       name = v_name;
       with_decryption = v_with_decryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_decryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_decryption", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_parameter

[@@@deriving.end]

let aws_ssm_parameter ?id ?with_decryption ~name () :
    aws_ssm_parameter =
  { id; name; with_decryption }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  insecure_value : string prop;
  name : string prop;
  type_ : string prop;
  value : string prop;
  version : float prop;
  with_decryption : bool prop;
}

let make ?id ?with_decryption ~name __id =
  let __type = "aws_ssm_parameter" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       insecure_value = Prop.computed __type __id "insecure_value";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       version = Prop.computed __type __id "version";
       with_decryption = Prop.computed __type __id "with_decryption";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_parameter
        (aws_ssm_parameter ?id ?with_decryption ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_decryption ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?with_decryption ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
