(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_environment_deployment_policy = {
  branch_pattern : string prop;
  environment : string prop;
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : github_repository_environment_deployment_policy) -> ()

let yojson_of_github_repository_environment_deployment_policy =
  (function
   | {
       branch_pattern = v_branch_pattern;
       environment = v_environment;
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_branch_pattern
         in
         ("branch_pattern", arg) :: bnds
       in
       `Assoc bnds
    : github_repository_environment_deployment_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_environment_deployment_policy

[@@@deriving.end]

let github_repository_environment_deployment_policy ?id
    ~branch_pattern ~environment ~repository () :
    github_repository_environment_deployment_policy =
  { branch_pattern; environment; id; repository }

type t = {
  tf_name : string;
  branch_pattern : string prop;
  environment : string prop;
  id : string prop;
  repository : string prop;
}

let make ?id ~branch_pattern ~environment ~repository __id =
  let __type = "github_repository_environment_deployment_policy" in
  let __attrs =
    ({
       tf_name = __id;
       branch_pattern = Prop.computed __type __id "branch_pattern";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_environment_deployment_policy
        (github_repository_environment_deployment_policy ?id
           ~branch_pattern ~environment ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~branch_pattern ~environment ~repository
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~branch_pattern ~environment ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
