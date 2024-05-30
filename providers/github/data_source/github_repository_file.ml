(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_file = {
  branch : string prop option; [@option]
  file : string prop;
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_file) -> ()

let yojson_of_github_repository_file =
  (function
   | {
       branch = v_branch;
       file = v_file;
       id = v_id;
       repository = v_repository;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_file in
         ("file", arg) :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_repository_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_file

[@@@deriving.end]

let github_repository_file ?branch ?id ~file ~repository () :
    github_repository_file =
  { branch; file; id; repository }

type t = {
  tf_name : string;
  branch : string prop;
  commit_author : string prop;
  commit_email : string prop;
  commit_message : string prop;
  commit_sha : string prop;
  content : string prop;
  file : string prop;
  id : string prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
}

let make ?branch ?id ~file ~repository __id =
  let __type = "github_repository_file" in
  let __attrs =
    ({
       tf_name = __id;
       branch = Prop.computed __type __id "branch";
       commit_author = Prop.computed __type __id "commit_author";
       commit_email = Prop.computed __type __id "commit_email";
       commit_message = Prop.computed __type __id "commit_message";
       commit_sha = Prop.computed __type __id "commit_sha";
       content = Prop.computed __type __id "content";
       file = Prop.computed __type __id "file";
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
      yojson_of_github_repository_file
        (github_repository_file ?branch ?id ~file ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?branch ?id ~file ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?branch ?id ~file ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
