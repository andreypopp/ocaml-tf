(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type collaborator = {
  events_url : string prop;
  followers_url : string prop;
  following_url : string prop;
  gists_url : string prop;
  html_url : string prop;
  id : float prop;
  login : string prop;
  organizations_url : string prop;
  permission : string prop;
  received_events_url : string prop;
  repos_url : string prop;
  site_admin : bool prop;
  starred_url : string prop;
  subscriptions_url : string prop;
  type_ : string prop; [@key "type"]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : collaborator) -> ()

let yojson_of_collaborator =
  (function
   | {
       events_url = v_events_url;
       followers_url = v_followers_url;
       following_url = v_following_url;
       gists_url = v_gists_url;
       html_url = v_html_url;
       id = v_id;
       login = v_login;
       organizations_url = v_organizations_url;
       permission = v_permission;
       received_events_url = v_received_events_url;
       repos_url = v_repos_url;
       site_admin = v_site_admin;
       starred_url = v_starred_url;
       subscriptions_url = v_subscriptions_url;
       type_ = v_type_;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscriptions_url
         in
         ("subscriptions_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_starred_url in
         ("starred_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_site_admin in
         ("site_admin", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repos_url in
         ("repos_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_received_events_url
         in
         ("received_events_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permission in
         ("permission", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_organizations_url
         in
         ("organizations_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html_url in
         ("html_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gists_url in
         ("gists_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_following_url in
         ("following_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_followers_url in
         ("followers_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_events_url in
         ("events_url", arg) :: bnds
       in
       `Assoc bnds
    : collaborator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_collaborator

[@@@deriving.end]

type github_collaborators = {
  affiliation : string prop option; [@option]
  id : string prop option; [@option]
  owner : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_collaborators) -> ()

let yojson_of_github_collaborators =
  (function
   | {
       affiliation = v_affiliation;
       id = v_id;
       owner = v_owner;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
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
         match v_affiliation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "affiliation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_collaborators -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_collaborators

[@@@deriving.end]

let github_collaborators ?affiliation ?id ~owner ~repository () :
    github_collaborators =
  { affiliation; id; owner; repository }

type t = {
  tf_name : string;
  affiliation : string prop;
  collaborator : collaborator list prop;
  id : string prop;
  owner : string prop;
  repository : string prop;
}

let make ?affiliation ?id ~owner ~repository __id =
  let __type = "github_collaborators" in
  let __attrs =
    ({
       tf_name = __id;
       affiliation = Prop.computed __type __id "affiliation";
       collaborator = Prop.computed __type __id "collaborator";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_collaborators
        (github_collaborators ?affiliation ?id ~owner ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?affiliation ?id ~owner ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?affiliation ?id ~owner ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
