(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_pull_request = {
  base_repository : string prop;
  id : string prop option; [@option]
  number : float prop;
  owner : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_pull_request) -> ()

let yojson_of_github_repository_pull_request =
  (function
   | {
       base_repository = v_base_repository;
       id = v_id;
       number = v_number;
       owner = v_owner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_float v_number in
         ("number", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_base_repository
         in
         ("base_repository", arg) :: bnds
       in
       `Assoc bnds
    : github_repository_pull_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_pull_request

[@@@deriving.end]

let github_repository_pull_request ?id ?owner ~base_repository
    ~number () : github_repository_pull_request =
  { base_repository; id; number; owner }

type t = {
  tf_name : string;
  base_ref : string prop;
  base_repository : string prop;
  base_sha : string prop;
  body : string prop;
  draft : bool prop;
  head_owner : string prop;
  head_ref : string prop;
  head_repository : string prop;
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

let make ?id ?owner ~base_repository ~number __id =
  let __type = "github_repository_pull_request" in
  let __attrs =
    ({
       tf_name = __id;
       base_ref = Prop.computed __type __id "base_ref";
       base_repository = Prop.computed __type __id "base_repository";
       base_sha = Prop.computed __type __id "base_sha";
       body = Prop.computed __type __id "body";
       draft = Prop.computed __type __id "draft";
       head_owner = Prop.computed __type __id "head_owner";
       head_ref = Prop.computed __type __id "head_ref";
       head_repository = Prop.computed __type __id "head_repository";
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
        (github_repository_pull_request ?id ?owner ~base_repository
           ~number ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner ~base_repository ~number __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owner ~base_repository ~number __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
