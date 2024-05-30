(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secrets = {
  created_at : string prop;
  name : string prop;
  updated_at : string prop;
  visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets) -> ()

let yojson_of_secrets =
  (function
   | {
       created_at = v_created_at;
       name = v_name;
       updated_at = v_updated_at;
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

type github_dependabot_organization_secrets = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_dependabot_organization_secrets) -> ()

let yojson_of_github_dependabot_organization_secrets =
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
    : github_dependabot_organization_secrets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_dependabot_organization_secrets

[@@@deriving.end]

let github_dependabot_organization_secrets ?id () :
    github_dependabot_organization_secrets =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  secrets : secrets list prop;
}

let make ?id __id =
  let __type = "github_dependabot_organization_secrets" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       secrets = Prop.computed __type __id "secrets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_dependabot_organization_secrets
        (github_dependabot_organization_secrets ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
