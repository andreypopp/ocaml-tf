(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_branch = {
  branch : string prop;
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_branch) -> ()

let yojson_of_github_branch =
  (function
   | { branch = v_branch; id = v_id; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : github_branch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_branch

[@@@deriving.end]

let github_branch ?id ~branch ~repository () : github_branch =
  { branch; id; repository }

type t = {
  tf_name : string;
  branch : string prop;
  etag : string prop;
  id : string prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
}

let make ?id ~branch ~repository __id =
  let __type = "github_branch" in
  let __attrs =
    ({
       tf_name = __id;
       branch = Prop.computed __type __id "branch";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       ref = Prop.computed __type __id "ref";
       repository = Prop.computed __type __id "repository";
       sha = Prop.computed __type __id "sha";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_branch
        (github_branch ?id ~branch ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~branch ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~branch ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
