(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secrets = {
  created_at : string prop;
  name : string prop;
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets) -> ()

let yojson_of_secrets =
  (function
   | {
       created_at = v_created_at;
       name = v_name;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       `Assoc bnds
    : secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets

[@@@deriving.end]

type github_actions_environment_secrets = {
  environment : string prop;
  full_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_environment_secrets) -> ()

let yojson_of_github_actions_environment_secrets =
  (function
   | {
       environment = v_environment;
       full_name = v_full_name;
       id = v_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_full_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "full_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       `Assoc bnds
    : github_actions_environment_secrets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_environment_secrets

[@@@deriving.end]

let github_actions_environment_secrets ?full_name ?id ?name
    ~environment () : github_actions_environment_secrets =
  { environment; full_name; id; name }

type t = {
  tf_name : string;
  environment : string prop;
  full_name : string prop;
  id : string prop;
  name : string prop;
  secrets : secrets list prop;
}

let make ?full_name ?id ?name ~environment __id =
  let __type = "github_actions_environment_secrets" in
  let __attrs =
    ({
       tf_name = __id;
       environment = Prop.computed __type __id "environment";
       full_name = Prop.computed __type __id "full_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       secrets = Prop.computed __type __id "secrets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_environment_secrets
        (github_actions_environment_secrets ?full_name ?id ?name
           ~environment ());
    attrs = __attrs;
  }

let register ?tf_module ?full_name ?id ?name ~environment __id =
  let (r : _ Tf_core.resource) =
    make ?full_name ?id ?name ~environment __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
