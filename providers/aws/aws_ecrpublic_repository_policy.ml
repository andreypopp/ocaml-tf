(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecrpublic_repository_policy = {
  id : string prop option; [@option]
  policy : string prop;
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecrpublic_repository_policy) -> ()

let yojson_of_aws_ecrpublic_repository_policy =
  (function
   | {
       id = v_id;
       policy = v_policy;
       repository_name = v_repository_name;
     } ->
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
       `Assoc bnds
    : aws_ecrpublic_repository_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecrpublic_repository_policy

[@@@deriving.end]

let aws_ecrpublic_repository_policy ?id ~policy ~repository_name () :
    aws_ecrpublic_repository_policy =
  { id; policy; repository_name }

type t = {
  tf_name : string;
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository_name : string prop;
}

let make ?id ~policy ~repository_name __id =
  let __type = "aws_ecrpublic_repository_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       registry_id = Prop.computed __type __id "registry_id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecrpublic_repository_policy
        (aws_ecrpublic_repository_policy ?id ~policy ~repository_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy ~repository_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
