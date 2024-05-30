(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_organization_variable = {
  id : string prop option; [@option]
  selected_repository_ids : float prop list option; [@option]
  value : string prop;
  variable_name : string prop;
  visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_organization_variable) -> ()

let yojson_of_github_actions_organization_variable =
  (function
   | {
       id = v_id;
       selected_repository_ids = v_selected_repository_ids;
       value = v_value;
       variable_name = v_variable_name;
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
         let arg = yojson_of_prop yojson_of_string v_variable_name in
         ("variable_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_selected_repository_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "selected_repository_ids", arg in
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
       `Assoc bnds
    : github_actions_organization_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_organization_variable

[@@@deriving.end]

let github_actions_organization_variable ?id ?selected_repository_ids
    ~value ~variable_name ~visibility () :
    github_actions_organization_variable =
  { id; selected_repository_ids; value; variable_name; visibility }

type t = {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  selected_repository_ids : float list prop;
  updated_at : string prop;
  value : string prop;
  variable_name : string prop;
  visibility : string prop;
}

let make ?id ?selected_repository_ids ~value ~variable_name
    ~visibility __id =
  let __type = "github_actions_organization_variable" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       selected_repository_ids =
         Prop.computed __type __id "selected_repository_ids";
       updated_at = Prop.computed __type __id "updated_at";
       value = Prop.computed __type __id "value";
       variable_name = Prop.computed __type __id "variable_name";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_organization_variable
        (github_actions_organization_variable ?id
           ?selected_repository_ids ~value ~variable_name ~visibility
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?selected_repository_ids ~value
    ~variable_name ~visibility __id =
  let (r : _ Tf_core.resource) =
    make ?id ?selected_repository_ids ~value ~variable_name
      ~visibility __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
