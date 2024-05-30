(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_user = {
  id : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_user) -> ()

let yojson_of_github_user =
  (function
   | { id = v_id; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
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
    : github_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_user

[@@@deriving.end]

let github_user ?id ~username () : github_user = { id; username }

type t = {
  tf_name : string;
  avatar_url : string prop;
  bio : string prop;
  blog : string prop;
  company : string prop;
  created_at : string prop;
  email : string prop;
  followers : float prop;
  following : float prop;
  gpg_keys : string list prop;
  gravatar_id : string prop;
  id : string prop;
  location : string prop;
  login : string prop;
  name : string prop;
  node_id : string prop;
  public_gists : float prop;
  public_repos : float prop;
  site_admin : bool prop;
  ssh_keys : string list prop;
  suspended_at : string prop;
  updated_at : string prop;
  username : string prop;
}

let make ?id ~username __id =
  let __type = "github_user" in
  let __attrs =
    ({
       tf_name = __id;
       avatar_url = Prop.computed __type __id "avatar_url";
       bio = Prop.computed __type __id "bio";
       blog = Prop.computed __type __id "blog";
       company = Prop.computed __type __id "company";
       created_at = Prop.computed __type __id "created_at";
       email = Prop.computed __type __id "email";
       followers = Prop.computed __type __id "followers";
       following = Prop.computed __type __id "following";
       gpg_keys = Prop.computed __type __id "gpg_keys";
       gravatar_id = Prop.computed __type __id "gravatar_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       login = Prop.computed __type __id "login";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       public_gists = Prop.computed __type __id "public_gists";
       public_repos = Prop.computed __type __id "public_repos";
       site_admin = Prop.computed __type __id "site_admin";
       ssh_keys = Prop.computed __type __id "ssh_keys";
       suspended_at = Prop.computed __type __id "suspended_at";
       updated_at = Prop.computed __type __id "updated_at";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_github_user (github_user ?id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~username __id =
  let (r : _ Tf_core.resource) = make ?id ~username __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
