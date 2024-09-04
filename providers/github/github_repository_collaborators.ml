(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type team = {
  permission : string prop option; [@option]
  team_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : team) -> ()

let yojson_of_team =
  (function
   | { permission = v_permission; team_id = v_team_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_id in
         ("team_id", arg) :: bnds
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : team -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_team

[@@@deriving.end]

type user = {
  permission : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | { permission = v_permission; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type github_repository_collaborators = {
  id : string prop option; [@option]
  repository : string prop;
  team : team list; [@default []] [@yojson_drop_default Stdlib.( = )]
  user : user list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_collaborators) -> ()

let yojson_of_github_repository_collaborators =
  (function
   | {
       id = v_id;
       repository = v_repository;
       team = v_team;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user then bnds
         else
           let arg = (yojson_of_list yojson_of_user) v_user in
           let bnd = "user", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_team then bnds
         else
           let arg = (yojson_of_list yojson_of_team) v_team in
           let bnd = "team", arg in
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
       `Assoc bnds
    : github_repository_collaborators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_collaborators

[@@@deriving.end]

let team ?permission ~team_id () : team = { permission; team_id }
let user ?permission ~username () : user = { permission; username }

let github_repository_collaborators ?id ~repository ~team ~user () :
    github_repository_collaborators =
  { id; repository; team; user }

type t = {
  tf_name : string;
  id : string prop;
  invitation_ids : string Tf_core.assoc prop;
  repository : string prop;
}

let make ?id ~repository ~team ~user __id =
  let __type = "github_repository_collaborators" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       invitation_ids = Prop.computed __type __id "invitation_ids";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_collaborators
        (github_repository_collaborators ?id ~repository ~team ~user
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository ~team ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ~repository ~team ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
