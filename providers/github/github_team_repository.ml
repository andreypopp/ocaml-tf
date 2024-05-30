(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_team_repository = {
  id : string prop option; [@option]
  permission : string prop option; [@option]
  repository : string prop;
  team_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team_repository) -> ()

let yojson_of_github_team_repository =
  (function
   | {
       id = v_id;
       permission = v_permission;
       repository = v_repository;
       team_id = v_team_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_id in
         ("team_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_team_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team_repository

[@@@deriving.end]

let github_team_repository ?id ?permission ~repository ~team_id () :
    github_team_repository =
  { id; permission; repository; team_id }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  permission : string prop;
  repository : string prop;
  team_id : string prop;
}

let make ?id ?permission ~repository ~team_id __id =
  let __type = "github_team_repository" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       permission = Prop.computed __type __id "permission";
       repository = Prop.computed __type __id "repository";
       team_id = Prop.computed __type __id "team_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team_repository
        (github_team_repository ?id ?permission ~repository ~team_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?permission ~repository ~team_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?permission ~repository ~team_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
