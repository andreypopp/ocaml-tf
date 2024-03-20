(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codecommit_repository = {
  id : string prop option; [@option]
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codecommit_repository) -> ()

let yojson_of_aws_codecommit_repository =
  (function
   | { id = v_id; repository_name = v_repository_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
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
    : aws_codecommit_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codecommit_repository

[@@@deriving.end]

let aws_codecommit_repository ?id ~repository_name () :
    aws_codecommit_repository =
  { id; repository_name }

type t = {
  arn : string prop;
  clone_url_http : string prop;
  clone_url_ssh : string prop;
  id : string prop;
  kms_key_id : string prop;
  repository_id : string prop;
  repository_name : string prop;
}

let make ?id ~repository_name __id =
  let __type = "aws_codecommit_repository" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       clone_url_http = Prop.computed __type __id "clone_url_http";
       clone_url_ssh = Prop.computed __type __id "clone_url_ssh";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       repository_id = Prop.computed __type __id "repository_id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_repository
        (aws_codecommit_repository ?id ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository_name __id =
  let (r : _ Tf_core.resource) = make ?id ~repository_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
