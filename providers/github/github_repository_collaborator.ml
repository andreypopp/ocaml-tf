(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_collaborator = {
  id : string prop option; [@option]
  permission : string prop option; [@option]
  permission_diff_suppression : bool prop option; [@option]
  repository : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_collaborator) -> ()

let yojson_of_github_repository_collaborator =
  (function
   | {
       id = v_id;
       permission = v_permission;
       permission_diff_suppression = v_permission_diff_suppression;
       repository = v_repository;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_permission_diff_suppression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permission_diff_suppression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
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
    : github_repository_collaborator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_collaborator

[@@@deriving.end]

let github_repository_collaborator ?id ?permission
    ?permission_diff_suppression ~repository ~username () :
    github_repository_collaborator =
  {
    id;
    permission;
    permission_diff_suppression;
    repository;
    username;
  }

type t = {
  tf_name : string;
  id : string prop;
  invitation_id : string prop;
  permission : string prop;
  permission_diff_suppression : bool prop;
  repository : string prop;
  username : string prop;
}

let make ?id ?permission ?permission_diff_suppression ~repository
    ~username __id =
  let __type = "github_repository_collaborator" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       invitation_id = Prop.computed __type __id "invitation_id";
       permission = Prop.computed __type __id "permission";
       permission_diff_suppression =
         Prop.computed __type __id "permission_diff_suppression";
       repository = Prop.computed __type __id "repository";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_collaborator
        (github_repository_collaborator ?id ?permission
           ?permission_diff_suppression ~repository ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?permission ?permission_diff_suppression
    ~repository ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?permission ?permission_diff_suppression ~repository
      ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
