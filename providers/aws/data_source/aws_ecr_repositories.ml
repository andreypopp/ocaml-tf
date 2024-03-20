(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecr_repositories = unit [@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_repositories) -> ()

let yojson_of_aws_ecr_repositories =
  (yojson_of_unit
    : aws_ecr_repositories -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_repositories

[@@@deriving.end]

let aws_ecr_repositories () = ()

type t = { id : string prop; names : string list prop }

let make __id =
  let __type = "aws_ecr_repositories" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_ecr_repositories (aws_ecr_repositories ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
