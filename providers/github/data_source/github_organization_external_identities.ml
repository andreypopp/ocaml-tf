(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identities = {
  login : string prop;
  saml_identity : string prop Tf_core.assoc;
  scim_identity : string prop Tf_core.assoc;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identities) -> ()

let yojson_of_identities =
  (function
   | {
       login = v_login;
       saml_identity = v_saml_identity;
       scim_identity = v_scim_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_scim_identity
         in
         ("scim_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_saml_identity
         in
         ("saml_identity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
       in
       `Assoc bnds
    : identities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identities

[@@@deriving.end]

type github_organization_external_identities = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_external_identities) -> ()

let yojson_of_github_organization_external_identities =
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
    : github_organization_external_identities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_external_identities

[@@@deriving.end]

let github_organization_external_identities ?id () :
    github_organization_external_identities =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  identities : identities list prop;
}

let make ?id __id =
  let __type = "github_organization_external_identities" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identities = Prop.computed __type __id "identities";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_external_identities
        (github_organization_external_identities ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
