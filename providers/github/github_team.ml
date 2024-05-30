(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_team = {
  create_default_maintainer : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  ldap_dn : string prop option; [@option]
  name : string prop;
  parent_team_id : string prop option; [@option]
  parent_team_read_id : string prop option; [@option]
  parent_team_read_slug : string prop option; [@option]
  privacy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team) -> ()

let yojson_of_github_team =
  (function
   | {
       create_default_maintainer = v_create_default_maintainer;
       description = v_description;
       id = v_id;
       ldap_dn = v_ldap_dn;
       name = v_name;
       parent_team_id = v_parent_team_id;
       parent_team_read_id = v_parent_team_read_id;
       parent_team_read_slug = v_parent_team_read_slug;
       privacy = v_privacy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_privacy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "privacy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_team_read_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_team_read_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_team_read_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_team_read_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_team_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_team_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ldap_dn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ldap_dn", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_default_maintainer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_default_maintainer", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_team -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team

[@@@deriving.end]

let github_team ?create_default_maintainer ?description ?id ?ldap_dn
    ?parent_team_id ?parent_team_read_id ?parent_team_read_slug
    ?privacy ~name () : github_team =
  {
    create_default_maintainer;
    description;
    id;
    ldap_dn;
    name;
    parent_team_id;
    parent_team_read_id;
    parent_team_read_slug;
    privacy;
  }

type t = {
  tf_name : string;
  create_default_maintainer : bool prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  ldap_dn : string prop;
  members_count : float prop;
  name : string prop;
  node_id : string prop;
  parent_team_id : string prop;
  parent_team_read_id : string prop;
  parent_team_read_slug : string prop;
  privacy : string prop;
  slug : string prop;
}

let make ?create_default_maintainer ?description ?id ?ldap_dn
    ?parent_team_id ?parent_team_read_id ?parent_team_read_slug
    ?privacy ~name __id =
  let __type = "github_team" in
  let __attrs =
    ({
       tf_name = __id;
       create_default_maintainer =
         Prop.computed __type __id "create_default_maintainer";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       ldap_dn = Prop.computed __type __id "ldap_dn";
       members_count = Prop.computed __type __id "members_count";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       parent_team_id = Prop.computed __type __id "parent_team_id";
       parent_team_read_id =
         Prop.computed __type __id "parent_team_read_id";
       parent_team_read_slug =
         Prop.computed __type __id "parent_team_read_slug";
       privacy = Prop.computed __type __id "privacy";
       slug = Prop.computed __type __id "slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team
        (github_team ?create_default_maintainer ?description ?id
           ?ldap_dn ?parent_team_id ?parent_team_read_id
           ?parent_team_read_slug ?privacy ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?create_default_maintainer ?description ?id
    ?ldap_dn ?parent_team_id ?parent_team_read_id
    ?parent_team_read_slug ?privacy ~name __id =
  let (r : _ Tf_core.resource) =
    make ?create_default_maintainer ?description ?id ?ldap_dn
      ?parent_team_id ?parent_team_read_id ?parent_team_read_slug
      ?privacy ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
