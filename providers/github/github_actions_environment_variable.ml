(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_environment_variable = {
  environment : string prop;
  id : string prop option; [@option]
  repository : string prop;
  value : string prop;
  variable_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_environment_variable) -> ()

let yojson_of_github_actions_environment_variable =
  (function
   | {
       environment = v_environment;
       id = v_id;
       repository = v_repository;
       value = v_value;
       variable_name = v_variable_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_variable_name in
         ("variable_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
       `Assoc bnds
    : github_actions_environment_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_environment_variable

[@@@deriving.end]

let github_actions_environment_variable ?id ~environment ~repository
    ~value ~variable_name () : github_actions_environment_variable =
  { environment; id; repository; value; variable_name }

type t = {
  tf_name : string;
  created_at : string prop;
  environment : string prop;
  id : string prop;
  repository : string prop;
  updated_at : string prop;
  value : string prop;
  variable_name : string prop;
}

let make ?id ~environment ~repository ~value ~variable_name __id =
  let __type = "github_actions_environment_variable" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       updated_at = Prop.computed __type __id "updated_at";
       value = Prop.computed __type __id "value";
       variable_name = Prop.computed __type __id "variable_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_environment_variable
        (github_actions_environment_variable ?id ~environment
           ~repository ~value ~variable_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~environment ~repository ~value
    ~variable_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~environment ~repository ~value ~variable_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
