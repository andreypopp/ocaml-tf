(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployment_branch_policies = {
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_branch_policies) -> ()

let yojson_of_deployment_branch_policies =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : deployment_branch_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_branch_policies

[@@@deriving.end]

type github_repository_deployment_branch_policies = {
  environment_name : string prop;
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_deployment_branch_policies) -> ()

let yojson_of_github_repository_deployment_branch_policies =
  (function
   | {
       environment_name = v_environment_name;
       id = v_id;
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
    : github_repository_deployment_branch_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_deployment_branch_policies

[@@@deriving.end]

let github_repository_deployment_branch_policies ?id
    ~environment_name ~repository () :
    github_repository_deployment_branch_policies =
  { environment_name; id; repository }

type t = {
  tf_name : string;
  deployment_branch_policies : deployment_branch_policies list prop;
  environment_name : string prop;
  id : string prop;
  repository : string prop;
}

let make ?id ~environment_name ~repository __id =
  let __type = "github_repository_deployment_branch_policies" in
  let __attrs =
    ({
       tf_name = __id;
       deployment_branch_policies =
         Prop.computed __type __id "deployment_branch_policies";
       environment_name =
         Prop.computed __type __id "environment_name";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_deployment_branch_policies
        (github_repository_deployment_branch_policies ?id
           ~environment_name ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~environment_name ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ~environment_name ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
