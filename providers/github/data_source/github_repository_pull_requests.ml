(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type results = {
  base_ref : string prop;
  base_sha : string prop;
  body : string prop;
  draft : bool prop;
  head_owner : string prop;
  head_ref : string prop;
  head_repository : string prop;
  head_sha : string prop;
  labels : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintainer_can_modify : bool prop;
  number : float prop;
  opened_at : float prop;
  opened_by : string prop;
  state : string prop;
  title : string prop;
  updated_at : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : results) -> ()

let yojson_of_results =
  (function
   | {
       base_ref = v_base_ref;
       base_sha = v_base_sha;
       body = v_body;
       draft = v_draft;
       head_owner = v_head_owner;
       head_ref = v_head_ref;
       head_repository = v_head_repository;
       head_sha = v_head_sha;
       labels = v_labels;
       maintainer_can_modify = v_maintainer_can_modify;
       number = v_number;
       opened_at = v_opened_at;
       opened_by = v_opened_by;
       state = v_state;
       title = v_title;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_opened_by in
         ("opened_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_opened_at in
         ("opened_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_number in
         ("number", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_maintainer_can_modify
         in
         ("maintainer_can_modify", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_labels then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_labels
           in
           let bnd = "labels", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_head_sha in
         ("head_sha", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_head_repository
         in
         ("head_repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_head_ref in
         ("head_ref", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_head_owner in
         ("head_owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_draft in
         ("draft", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_base_sha in
         ("base_sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_base_ref in
         ("base_ref", arg) :: bnds
       in
       `Assoc bnds
    : results -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_results

[@@@deriving.end]

type github_repository_pull_requests = {
  base_ref : string prop option; [@option]
  base_repository : string prop;
  head_ref : string prop option; [@option]
  id : string prop option; [@option]
  owner : string prop option; [@option]
  sort_by : string prop option; [@option]
  sort_direction : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_pull_requests) -> ()

let yojson_of_github_repository_pull_requests =
  (function
   | {
       base_ref = v_base_ref;
       base_repository = v_base_repository;
       head_ref = v_head_ref;
       id = v_id;
       owner = v_owner;
       sort_by = v_sort_by;
       sort_direction = v_sort_direction;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sort_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sort_direction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sort_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sort_by", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
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
         match v_head_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "head_ref", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_base_repository
         in
         ("base_repository", arg) :: bnds
       in
       let bnds =
         match v_base_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_ref", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_repository_pull_requests ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_pull_requests

[@@@deriving.end]

let github_repository_pull_requests ?base_ref ?head_ref ?id ?owner
    ?sort_by ?sort_direction ?state ~base_repository () :
    github_repository_pull_requests =
  {
    base_ref;
    base_repository;
    head_ref;
    id;
    owner;
    sort_by;
    sort_direction;
    state;
  }

type t = {
  tf_name : string;
  base_ref : string prop;
  base_repository : string prop;
  head_ref : string prop;
  id : string prop;
  owner : string prop;
  results : results list prop;
  sort_by : string prop;
  sort_direction : string prop;
  state : string prop;
}

let make ?base_ref ?head_ref ?id ?owner ?sort_by ?sort_direction
    ?state ~base_repository __id =
  let __type = "github_repository_pull_requests" in
  let __attrs =
    ({
       tf_name = __id;
       base_ref = Prop.computed __type __id "base_ref";
       base_repository = Prop.computed __type __id "base_repository";
       head_ref = Prop.computed __type __id "head_ref";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       results = Prop.computed __type __id "results";
       sort_by = Prop.computed __type __id "sort_by";
       sort_direction = Prop.computed __type __id "sort_direction";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_pull_requests
        (github_repository_pull_requests ?base_ref ?head_ref ?id
           ?owner ?sort_by ?sort_direction ?state ~base_repository ());
    attrs = __attrs;
  }

let register ?tf_module ?base_ref ?head_ref ?id ?owner ?sort_by
    ?sort_direction ?state ~base_repository __id =
  let (r : _ Tf_core.resource) =
    make ?base_ref ?head_ref ?id ?owner ?sort_by ?sort_direction
      ?state ~base_repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
