(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_branch = {
  branch : string prop;
  id : string prop option; [@option]
  repository : string prop;
  source_branch : string prop option; [@option]
  source_sha : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_branch) -> ()

let yojson_of_github_branch =
  (function
   | {
       branch = v_branch;
       id = v_id;
       repository = v_repository;
       source_branch = v_source_branch;
       source_sha = v_source_sha;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_sha with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_sha", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_branch", arg in
             bnd :: bnds
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

let github_branch ?id ?source_branch ?source_sha ~branch ~repository
    () : github_branch =
  { branch; id; repository; source_branch; source_sha }

type t = {
  tf_name : string;
  branch : string prop;
  etag : string prop;
  id : string prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
  source_branch : string prop;
  source_sha : string prop;
}

let make ?id ?source_branch ?source_sha ~branch ~repository __id =
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
       source_branch = Prop.computed __type __id "source_branch";
       source_sha = Prop.computed __type __id "source_sha";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_branch
        (github_branch ?id ?source_branch ?source_sha ~branch
           ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?source_branch ?source_sha ~branch
    ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ?source_branch ?source_sha ~branch ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
