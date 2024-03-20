(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codebuild_source_credential = {
  auth_type : string prop;  (** auth_type *)
  id : string prop option; [@option]  (** id *)
  server_type : string prop;  (** server_type *)
  token : string prop;  (** token *)
  user_name : string prop option; [@option]  (** user_name *)
}
[@@deriving yojson_of]
(** aws_codebuild_source_credential *)

let aws_codebuild_source_credential ?id ?user_name ~auth_type
    ~server_type ~token () : aws_codebuild_source_credential =
  { auth_type; id; server_type; token; user_name }

type t = {
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
