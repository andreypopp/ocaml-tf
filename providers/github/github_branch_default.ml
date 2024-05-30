(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_branch_default = {
  branch : string prop;
  id : string prop option; [@option]
  rename : bool prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_branch_default) -> ()

let yojson_of_github_branch_default =
  (function
   | {
       branch = v_branch;
       id = v_id;
       rename = v_rename;
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
         match v_rename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rename", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : github_branch_default -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_branch_default

[@@@deriving.end]

let github_branch_default ?id ?rename ~branch ~repository () :
    github_branch_default =
  { branch; id; rename; repository }

type t = {
  tf_name : string;
  branch : string prop;
  etag : string prop;
  id : string prop;
  rename : bool prop;
  repository : string prop;
}

let make ?id ?rename ~branch ~repository __id =
  let __type = "github_branch_default" in
  let __attrs =
    ({
       tf_name = __id;
       branch = Prop.computed __type __id "branch";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       rename = Prop.computed __type __id "rename";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_branch_default
        (github_branch_default ?id ?rename ~branch ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?rename ~branch ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ?rename ~branch ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
