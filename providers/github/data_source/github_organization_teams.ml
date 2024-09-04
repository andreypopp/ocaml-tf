(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type teams = {
  description : string prop;
  id : float prop;
  members : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  node_id : string prop;
  parent : string prop Tf_core.assoc;
  privacy : string prop;
  repositories : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : teams) -> ()

let yojson_of_teams =
  (function
   | {
       description = v_description;
       id = v_id;
       members = v_members;
       name = v_name;
       node_id = v_node_id;
       parent = v_parent;
       privacy = v_privacy;
       repositories = v_repositories;
       slug = v_slug;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slug in
         ("slug", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_repositories then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_repositories
           in
           let bnd = "repositories", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_privacy in
         ("privacy", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_parent
         in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_id in
         ("node_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_members then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_members
           in
           let bnd = "members", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : teams -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_teams

[@@@deriving.end]

type github_organization_teams = {
  id : string prop option; [@option]
  results_per_page : float prop option; [@option]
  root_teams_only : bool prop option; [@option]
  summary_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_teams) -> ()

let yojson_of_github_organization_teams =
  (function
   | {
       id = v_id;
       results_per_page = v_results_per_page;
       root_teams_only = v_root_teams_only;
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
         match v_root_teams_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "root_teams_only", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_organization_teams -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_teams

[@@@deriving.end]

let github_organization_teams ?id ?results_per_page ?root_teams_only
    ?summary_only () : github_organization_teams =
  { id; results_per_page; root_teams_only; summary_only }

type t = {
  tf_name : string;
  id : string prop;
  results_per_page : float prop;
  root_teams_only : bool prop;
  summary_only : bool prop;
  teams : teams list prop;
}

let make ?id ?results_per_page ?root_teams_only ?summary_only __id =
  let __type = "github_organization_teams" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       results_per_page =
         Prop.computed __type __id "results_per_page";
       root_teams_only = Prop.computed __type __id "root_teams_only";
       summary_only = Prop.computed __type __id "summary_only";
       teams = Prop.computed __type __id "teams";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_teams
        (github_organization_teams ?id ?results_per_page
           ?root_teams_only ?summary_only ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?results_per_page ?root_teams_only
    ?summary_only __id =
  let (r : _ Tf_core.resource) =
    make ?id ?results_per_page ?root_teams_only ?summary_only __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
