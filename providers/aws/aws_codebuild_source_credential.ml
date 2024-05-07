(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codebuild_source_credential = {
  auth_type : string prop;
  id : string prop option; [@option]
  server_type : string prop;
  token : string prop;
  user_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codebuild_source_credential) -> ()

let yojson_of_aws_codebuild_source_credential =
  (function
   | {
       auth_type = v_auth_type;
       id = v_id;
       server_type = v_server_type;
       token = v_token;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_type in
         ("server_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_codebuild_source_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codebuild_source_credential

[@@@deriving.end]

let aws_codebuild_source_credential ?id ?user_name ~auth_type
    ~server_type ~token () : aws_codebuild_source_credential =
  { auth_type; id; server_type; token; user_name }

type t = {
  tf_name : string;
  arn : string prop;
  auth_type : string prop;
  id : string prop;
  server_type : string prop;
  token : string prop;
  user_name : string prop;
}

let make ?id ?user_name ~auth_type ~server_type ~token __id =
  let __type = "aws_codebuild_source_credential" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auth_type = Prop.computed __type __id "auth_type";
       id = Prop.computed __type __id "id";
       server_type = Prop.computed __type __id "server_type";
       token = Prop.computed __type __id "token";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codebuild_source_credential
        (aws_codebuild_source_credential ?id ?user_name ~auth_type
           ~server_type ~token ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?user_name ~auth_type ~server_type ~token
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?user_name ~auth_type ~server_type ~token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
