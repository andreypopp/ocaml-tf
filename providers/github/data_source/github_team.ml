(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type repositories_detailed = {
  repo_id : float prop;
  role_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repositories_detailed) -> ()

let yojson_of_repositories_detailed =
  (function
   | { repo_id = v_repo_id; role_name = v_role_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_name in
         ("role_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_repo_id in
         ("repo_id", arg) :: bnds
       in
       `Assoc bnds
    : repositories_detailed -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repositories_detailed

[@@@deriving.end]

type github_team = {
  id : string prop option; [@option]
  membership_type : string prop option; [@option]
  results_per_page : float prop option; [@option]
  slug : string prop;
  summary_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team) -> ()

let yojson_of_github_team =
  (function
   | {
       id = v_id;
       membership_type = v_membership_type;
       results_per_page = v_results_per_page;
       slug = v_slug;
       summary_only = v_summary_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_summary_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "summary_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slug in
         ("slug", arg) :: bnds
       in
       let bnds =
         match v_results_per_page with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "results_per_page", arg in
             bnd :: bnds
       in
       let bnds =
         match v_membership_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "membership_type", arg in
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
    : github_team -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team

[@@@deriving.end]

let github_team ?id ?membership_type ?results_per_page ?summary_only
    ~slug () : github_team =
  { id; membership_type; results_per_page; slug; summary_only }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  members : string list prop;
  membership_type : string prop;
  name : string prop;
  node_id : string prop;
  permission : string prop;
  privacy : string prop;
  repositories : string list prop;
  repositories_detailed : repositories_detailed list prop;
  results_per_page : float prop;
  slug : string prop;
  summary_only : bool prop;
}

let make ?id ?membership_type ?results_per_page ?summary_only ~slug
    __id =
  let __type = "github_team" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       membership_type = Prop.computed __type __id "membership_type";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       permission = Prop.computed __type __id "permission";
       privacy = Prop.computed __type __id "privacy";
       repositories = Prop.computed __type __id "repositories";
       repositories_detailed =
         Prop.computed __type __id "repositories_detailed";
       results_per_page =
         Prop.computed __type __id "results_per_page";
       slug = Prop.computed __type __id "slug";
       summary_only = Prop.computed __type __id "summary_only";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team
        (github_team ?id ?membership_type ?results_per_page
           ?summary_only ~slug ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?membership_type ?results_per_page
    ?summary_only ~slug __id =
  let (r : _ Tf_core.resource) =
    make ?id ?membership_type ?results_per_page ?summary_only ~slug
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
