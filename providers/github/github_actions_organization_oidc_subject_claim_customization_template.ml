(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_organization_oidc_subject_claim_customization_template = {
  id : string prop option; [@option]
  include_claim_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       github_actions_organization_oidc_subject_claim_customization_template) ->
  ()

let yojson_of_github_actions_organization_oidc_subject_claim_customization_template
    =
  (function
   | { id = v_id; include_claim_keys = v_include_claim_keys } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_claim_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_include_claim_keys
           in
           let bnd = "include_claim_keys", arg in
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
    : github_actions_organization_oidc_subject_claim_customization_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_github_actions_organization_oidc_subject_claim_customization_template

[@@@deriving.end]

let github_actions_organization_oidc_subject_claim_customization_template
    ?id ~include_claim_keys () :
    github_actions_organization_oidc_subject_claim_customization_template
    =
  { id; include_claim_keys }

type t = {
  tf_name : string;
  id : string prop;
  include_claim_keys : string list prop;
}

let make ?id ~include_claim_keys __id =
  let __type =
    "github_actions_organization_oidc_subject_claim_customization_template"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       include_claim_keys =
         Prop.computed __type __id "include_claim_keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_organization_oidc_subject_claim_customization_template
        (github_actions_organization_oidc_subject_claim_customization_template
           ?id ~include_claim_keys ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~include_claim_keys __id =
  let (r : _ Tf_core.resource) = make ?id ~include_claim_keys __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
