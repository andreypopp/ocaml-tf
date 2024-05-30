(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_runner_group = {
  allows_public_repositories : bool prop option; [@option]
  name : string prop;
  restricted_to_workflows : bool prop option; [@option]
  selected_repository_ids : float prop list option; [@option]
  selected_workflows : string prop list option; [@option]
  visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_runner_group) -> ()

let yojson_of_github_actions_runner_group =
  (function
   | {
       allows_public_repositories = v_allows_public_repositories;
       name = v_name;
       restricted_to_workflows = v_restricted_to_workflows;
       selected_repository_ids = v_selected_repository_ids;
       selected_workflows = v_selected_workflows;
       visibility = v_visibility;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visibility in
         ("visibility", arg) :: bnds
       in
       let bnds =
         match v_selected_workflows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "selected_workflows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selected_repository_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "selected_repository_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restricted_to_workflows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "restricted_to_workflows", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_allows_public_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allows_public_repositories", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_actions_runner_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_runner_group

[@@@deriving.end]

let github_actions_runner_group ?allows_public_repositories
    ?restricted_to_workflows ?selected_repository_ids
    ?selected_workflows ~name ~visibility () :
    github_actions_runner_group =
  {
    allows_public_repositories;
    name;
    restricted_to_workflows;
    selected_repository_ids;
    selected_workflows;
    visibility;
  }

type t = {
  tf_name : string;
  allows_public_repositories : bool prop;
  default : bool prop;
  etag : string prop;
  id : string prop;
  inherited : bool prop;
  name : string prop;
  restricted_to_workflows : bool prop;
  runners_url : string prop;
  selected_repositories_url : string prop;
  selected_repository_ids : float list prop;
  selected_workflows : string list prop;
  visibility : string prop;
}

let make ?allows_public_repositories ?restricted_to_workflows
    ?selected_repository_ids ?selected_workflows ~name ~visibility
    __id =
  let __type = "github_actions_runner_group" in
  let __attrs =
    ({
       tf_name = __id;
       allows_public_repositories =
         Prop.computed __type __id "allows_public_repositories";
       default = Prop.computed __type __id "default";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       inherited = Prop.computed __type __id "inherited";
       name = Prop.computed __type __id "name";
       restricted_to_workflows =
         Prop.computed __type __id "restricted_to_workflows";
       runners_url = Prop.computed __type __id "runners_url";
       selected_repositories_url =
         Prop.computed __type __id "selected_repositories_url";
       selected_repository_ids =
         Prop.computed __type __id "selected_repository_ids";
       selected_workflows =
         Prop.computed __type __id "selected_workflows";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_runner_group
        (github_actions_runner_group ?allows_public_repositories
           ?restricted_to_workflows ?selected_repository_ids
           ?selected_workflows ~name ~visibility ());
    attrs = __attrs;
  }

let register ?tf_module ?allows_public_repositories
    ?restricted_to_workflows ?selected_repository_ids
    ?selected_workflows ~name ~visibility __id =
  let (r : _ Tf_core.resource) =
    make ?allows_public_repositories ?restricted_to_workflows
      ?selected_repository_ids ?selected_workflows ~name ~visibility
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
