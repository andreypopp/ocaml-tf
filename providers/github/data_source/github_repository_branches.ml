(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type branches = { name : string prop; protected : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : branches) -> ()

let yojson_of_branches =
  (function
   | { name = v_name; protected = v_protected } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_protected in
         ("protected", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : branches -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_branches

[@@@deriving.end]

type github_repository_branches = {
  id : string prop option; [@option]
  only_non_protected_branches : bool prop option; [@option]
  only_protected_branches : bool prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_branches) -> ()

let yojson_of_github_repository_branches =
  (function
   | {
       id = v_id;
       only_non_protected_branches = v_only_non_protected_branches;
       only_protected_branches = v_only_protected_branches;
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
         match v_only_protected_branches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "only_protected_branches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_only_non_protected_branches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "only_non_protected_branches", arg in
             bnd :: bnds
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
    : github_repository_branches -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_branches

[@@@deriving.end]

let github_repository_branches ?id ?only_non_protected_branches
    ?only_protected_branches ~repository () :
    github_repository_branches =
  {
    id;
    only_non_protected_branches;
    only_protected_branches;
    repository;
  }

type t = {
  tf_name : string;
  branches : branches list prop;
  id : string prop;
  only_non_protected_branches : bool prop;
  only_protected_branches : bool prop;
  repository : string prop;
}

let make ?id ?only_non_protected_branches ?only_protected_branches
    ~repository __id =
  let __type = "github_repository_branches" in
  let __attrs =
    ({
       tf_name = __id;
       branches = Prop.computed __type __id "branches";
       id = Prop.computed __type __id "id";
       only_non_protected_branches =
         Prop.computed __type __id "only_non_protected_branches";
       only_protected_branches =
         Prop.computed __type __id "only_protected_branches";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_branches
        (github_repository_branches ?id ?only_non_protected_branches
           ?only_protected_branches ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?only_non_protected_branches
    ?only_protected_branches ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ?only_non_protected_branches ?only_protected_branches
      ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
