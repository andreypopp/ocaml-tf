(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_organization_security_manager = {
  id : string prop option; [@option]
  team_slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_security_manager) -> ()

let yojson_of_github_organization_security_manager =
  (function
   | { id = v_id; team_slug = v_team_slug } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_slug in
         ("team_slug", arg) :: bnds
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
    : github_organization_security_manager ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_security_manager

[@@@deriving.end]

let github_organization_security_manager ?id ~team_slug () :
    github_organization_security_manager =
  { id; team_slug }

type t = {
  tf_name : string;
  id : string prop;
  team_slug : string prop;
}

let make ?id ~team_slug __id =
  let __type = "github_organization_security_manager" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       team_slug = Prop.computed __type __id "team_slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_security_manager
        (github_organization_security_manager ?id ~team_slug ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~team_slug __id =
  let (r : _ Tf_core.resource) = make ?id ~team_slug __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
