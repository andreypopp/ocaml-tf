(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repositories = {
  id : string prop option; [@option]
  include_repo_id : bool prop option; [@option]
  query : string prop;
  results_per_page : float prop option; [@option]
  sort : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repositories) -> ()

let yojson_of_github_repositories =
  (function
   | {
       id = v_id;
       include_repo_id = v_include_repo_id;
       query = v_query;
       results_per_page = v_results_per_page;
       sort = v_sort;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sort with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sort", arg in
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
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         match v_include_repo_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_repo_id", arg in
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
    : github_repositories -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repositories

[@@@deriving.end]

let github_repositories ?id ?include_repo_id ?results_per_page ?sort
    ~query () : github_repositories =
  { id; include_repo_id; query; results_per_page; sort }

type t = {
  tf_name : string;
  full_names : string list prop;
  id : string prop;
  include_repo_id : bool prop;
  names : string list prop;
  query : string prop;
  repo_ids : float list prop;
  results_per_page : float prop;
  sort : string prop;
}

let make ?id ?include_repo_id ?results_per_page ?sort ~query __id =
  let __type = "github_repositories" in
  let __attrs =
    ({
       tf_name = __id;
       full_names = Prop.computed __type __id "full_names";
       id = Prop.computed __type __id "id";
       include_repo_id = Prop.computed __type __id "include_repo_id";
       names = Prop.computed __type __id "names";
       query = Prop.computed __type __id "query";
       repo_ids = Prop.computed __type __id "repo_ids";
       results_per_page =
         Prop.computed __type __id "results_per_page";
       sort = Prop.computed __type __id "sort";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repositories
        (github_repositories ?id ?include_repo_id ?results_per_page
           ?sort ~query ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_repo_id ?results_per_page ?sort
    ~query __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_repo_id ?results_per_page ?sort ~query __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
