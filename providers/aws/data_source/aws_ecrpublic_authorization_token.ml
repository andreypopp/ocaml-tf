(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecrpublic_authorization_token = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecrpublic_authorization_token) -> ()

let yojson_of_aws_ecrpublic_authorization_token =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : aws_ecrpublic_authorization_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecrpublic_authorization_token

[@@@deriving.end]

let aws_ecrpublic_authorization_token ?id () :
    aws_ecrpublic_authorization_token =
  { id }

type t = {
  tf_name : string;
  authorization_token : string prop;
  expires_at : string prop;
  id : string prop;
  password : string prop;
  user_name : string prop;
}

let make ?id __id =
  let __type = "aws_ecrpublic_authorization_token" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_token =
         Prop.computed __type __id "authorization_token";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       password = Prop.computed __type __id "password";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecrpublic_authorization_token
        (aws_ecrpublic_authorization_token ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
