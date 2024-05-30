(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_issue = {
  assignees : string prop list option; [@option]
  body : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop list option; [@option]
  milestone_number : float prop option; [@option]
  repository : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_issue) -> ()

let yojson_of_github_issue =
  (function
   | {
       assignees = v_assignees;
       body = v_body;
       id = v_id;
       labels = v_labels;
       milestone_number = v_milestone_number;
       repository = v_repository;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_milestone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "milestone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "labels", arg in
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
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assignees with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "assignees", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_issue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_issue

[@@@deriving.end]

let github_issue ?assignees ?body ?id ?labels ?milestone_number
    ~repository ~title () : github_issue =
  {
    assignees;
    body;
    id;
    labels;
    milestone_number;
    repository;
    title;
  }

type t = {
  tf_name : string;
  assignees : string list prop;
  body : string prop;
  etag : string prop;
  id : string prop;
  issue_id : float prop;
  labels : string list prop;
  milestone_number : float prop;
  number : float prop;
  repository : string prop;
  title : string prop;
}

let make ?assignees ?body ?id ?labels ?milestone_number ~repository
    ~title __id =
  let __type = "github_issue" in
  let __attrs =
    ({
       tf_name = __id;
       assignees = Prop.computed __type __id "assignees";
       body = Prop.computed __type __id "body";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       issue_id = Prop.computed __type __id "issue_id";
       labels = Prop.computed __type __id "labels";
       milestone_number =
         Prop.computed __type __id "milestone_number";
       number = Prop.computed __type __id "number";
       repository = Prop.computed __type __id "repository";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_issue
        (github_issue ?assignees ?body ?id ?labels ?milestone_number
           ~repository ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?assignees ?body ?id ?labels
    ?milestone_number ~repository ~title __id =
  let (r : _ Tf_core.resource) =
    make ?assignees ?body ?id ?labels ?milestone_number ~repository
      ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
