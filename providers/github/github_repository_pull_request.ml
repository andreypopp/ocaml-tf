(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_pull_request = {
  base_ref : string prop;
  base_repository : string prop;
  body : string prop option; [@option]
  head_ref : string prop;
  id : string prop option; [@option]
  maintainer_can_modify : bool prop option; [@option]
  owner : string prop option; [@option]
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_pull_request) -> ()

let yojson_of_github_repository_pull_request =
  (function
   | {
       base_ref = v_base_ref;
       base_repository = v_base_repository;
       body = v_body;
       head_ref = v_head_ref;
       id = v_id;
       maintainer_can_modify = v_maintainer_can_modify;
       owner = v_owner;
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
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintainer_can_modify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "maintainer_can_modify", arg in
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
         let arg = yojson_of_prop yojson_of_string v_head_ref in
         ("head_ref", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_base_repository
         in
         ("base_repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_base_ref in
         ("base_ref", arg) :: bnds
       in
       `Assoc bnds
    : github_repository_pull_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_pull_request

[@@@deriving.end]

let github_repository_pull_request ?body ?id ?maintainer_can_modify
    ?owner ~base_ref ~base_repository ~head_ref ~title () :
    github_repository_pull_request =
  {
    base_ref;
    base_repository;
    body;
    head_ref;
    id;
    maintainer_can_modify;
    owner;
    title;
  }

type t = {
  tf_name : string;
  base_ref : string prop;
  base_repository : string prop;
  base_sha : string prop;
  body : string prop;
  draft : bool prop;
  head_ref : string prop;
  head_sha : string prop;
  id : string prop;
  labels : string list prop;
  maintainer_can_modify : bool prop;
  number : float prop;
  opened_at : float prop;
  opened_by : string prop;
  owner : string prop;
  state : string prop;
  title : string prop;
  updated_at : float prop;
}

let make ?body ?id ?maintainer_can_modify ?owner ~base_ref
    ~base_repository ~head_ref ~title __id =
  let __type = "github_repository_pull_request" in
  let __attrs =
    ({
       tf_name = __id;
       base_ref = Prop.computed __type __id "base_ref";
       base_repository = Prop.computed __type __id "base_repository";
       base_sha = Prop.computed __type __id "base_sha";
       body = Prop.computed __type __id "body";
       draft = Prop.computed __type __id "draft";
       head_ref = Prop.computed __type __id "head_ref";
       head_sha = Prop.computed __type __id "head_sha";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       maintainer_can_modify =
         Prop.computed __type __id "maintainer_can_modify";
       number = Prop.computed __type __id "number";
       opened_at = Prop.computed __type __id "opened_at";
       opened_by = Prop.computed __type __id "opened_by";
       owner = Prop.computed __type __id "owner";
       state = Prop.computed __type __id "state";
       title = Prop.computed __type __id "title";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_pull_request
        (github_repository_pull_request ?body ?id
           ?maintainer_can_modify ?owner ~base_ref ~base_repository
           ~head_ref ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?body ?id ?maintainer_can_modify ?owner
    ~base_ref ~base_repository ~head_ref ~title __id =
  let (r : _ Tf_core.resource) =
    make ?body ?id ?maintainer_can_modify ?owner ~base_ref
      ~base_repository ~head_ref ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
