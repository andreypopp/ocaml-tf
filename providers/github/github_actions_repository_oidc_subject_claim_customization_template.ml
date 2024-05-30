(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_repository_oidc_subject_claim_customization_template = {
  id : string prop option; [@option]
  include_claim_keys : string prop list option; [@option]
  repository : string prop;
  use_default : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       github_actions_repository_oidc_subject_claim_customization_template) ->
  ()

let yojson_of_github_actions_repository_oidc_subject_claim_customization_template
    =
  (function
   | {
       id = v_id;
       include_claim_keys = v_include_claim_keys;
       repository = v_repository;
       use_default = v_use_default;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_default in
         ("use_default", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_include_claim_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
    : github_actions_repository_oidc_subject_claim_customization_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_github_actions_repository_oidc_subject_claim_customization_template

[@@@deriving.end]

let github_actions_repository_oidc_subject_claim_customization_template
    ?id ?include_claim_keys ~repository ~use_default () :
    github_actions_repository_oidc_subject_claim_customization_template
    =
  { id; include_claim_keys; repository; use_default }

type t = {
  tf_name : string;
  id : string prop;
  include_claim_keys : string list prop;
  repository : string prop;
  use_default : bool prop;
}

let make ?id ?include_claim_keys ~repository ~use_default __id =
  let __type =
    "github_actions_repository_oidc_subject_claim_customization_template"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       include_claim_keys =
         Prop.computed __type __id "include_claim_keys";
       repository = Prop.computed __type __id "repository";
       use_default = Prop.computed __type __id "use_default";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_repository_oidc_subject_claim_customization_template
        (github_actions_repository_oidc_subject_claim_customization_template
           ?id ?include_claim_keys ~repository ~use_default ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_claim_keys ~repository
    ~use_default __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_claim_keys ~repository ~use_default __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
