(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_deployment_branch_policy = {
  environment_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_deployment_branch_policy) -> ()

let yojson_of_github_repository_deployment_branch_policy =
  (function
   | {
       environment_name = v_environment_name;
       id = v_id;
       name = v_name;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_environment_name
         in
         ("environment_name", arg) :: bnds
       in
       `Assoc bnds
    : github_repository_deployment_branch_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_deployment_branch_policy

[@@@deriving.end]

let github_repository_deployment_branch_policy ?id ~environment_name
    ~name ~repository () : github_repository_deployment_branch_policy
    =
  { environment_name; id; name; repository }

type t = {
  tf_name : string;
  environment_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  repository : string prop;
}

let make ?id ~environment_name ~name ~repository __id =
  let __type = "github_repository_deployment_branch_policy" in
  let __attrs =
    ({
       tf_name = __id;
       environment_name =
         Prop.computed __type __id "environment_name";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_deployment_branch_policy
        (github_repository_deployment_branch_policy ?id
           ~environment_name ~name ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~environment_name ~name ~repository __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~environment_name ~name ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
