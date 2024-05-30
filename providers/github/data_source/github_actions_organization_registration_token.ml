(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_organization_registration_token = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : github_actions_organization_registration_token) -> ()

let yojson_of_github_actions_organization_registration_token =
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
    : github_actions_organization_registration_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_organization_registration_token

[@@@deriving.end]

let github_actions_organization_registration_token ?id () :
    github_actions_organization_registration_token =
  { id }

type t = {
  tf_name : string;
  expires_at : float prop;
  id : string prop;
  token : string prop;
}

let make ?id __id =
  let __type = "github_actions_organization_registration_token" in
  let __attrs =
    ({
       tf_name = __id;
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_organization_registration_token
        (github_actions_organization_registration_token ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
