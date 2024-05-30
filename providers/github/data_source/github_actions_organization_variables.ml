(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type variables = {
  created_at : string prop;
  name : string prop;
  updated_at : string prop;
  value : string prop;
  visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : variables) -> ()

let yojson_of_variables =
  (function
   | {
       created_at = v_created_at;
       name = v_name;
       updated_at = v_updated_at;
       value = v_value;
       visibility = v_visibility;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visibility in
         ("visibility", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
    : variables -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_variables

[@@@deriving.end]

type github_actions_organization_variables = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_organization_variables) -> ()

let yojson_of_github_actions_organization_variables =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : github_actions_organization_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_organization_variables

[@@@deriving.end]

let github_actions_organization_variables ?id () :
    github_actions_organization_variables =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  variables : variables list prop;
}

let make ?id __id =
  let __type = "github_actions_organization_variables" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       variables = Prop.computed __type __id "variables";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_organization_variables
        (github_actions_organization_variables ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
