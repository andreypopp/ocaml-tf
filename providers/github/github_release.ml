(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_release = {
  body : string prop option; [@option]
  discussion_category_name : string prop option; [@option]
  draft : bool prop option; [@option]
  generate_release_notes : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  prerelease : bool prop option; [@option]
  repository : string prop;
  tag_name : string prop;
  target_commitish : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_release) -> ()

let yojson_of_github_release =
  (function
   | {
       body = v_body;
       discussion_category_name = v_discussion_category_name;
       draft = v_draft;
       generate_release_notes = v_generate_release_notes;
       id = v_id;
       name = v_name;
       prerelease = v_prerelease;
       repository = v_repository;
       tag_name = v_tag_name;
       target_commitish = v_target_commitish;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_commitish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_commitish", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_name in
         ("tag_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_prerelease with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prerelease", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_generate_release_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "generate_release_notes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_draft with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "draft", arg in
             bnd :: bnds
       in
       let bnds =
         match v_discussion_category_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "discussion_category_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_release -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_release

[@@@deriving.end]

let github_release ?body ?discussion_category_name ?draft
    ?generate_release_notes ?id ?name ?prerelease ?target_commitish
    ~repository ~tag_name () : github_release =
  {
    body;
    discussion_category_name;
    draft;
    generate_release_notes;
    id;
    name;
    prerelease;
    repository;
    tag_name;
    target_commitish;
  }

type t = {
  tf_name : string;
  assets_url : string prop;
  body : string prop;
  created_at : string prop;
  discussion_category_name : string prop;
  draft : bool prop;
  etag : string prop;
  generate_release_notes : bool prop;
  html_url : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  prerelease : bool prop;
  published_at : string prop;
  release_id : float prop;
  repository : string prop;
  tag_name : string prop;
  tarball_url : string prop;
  target_commitish : string prop;
  upload_url : string prop;
  url : string prop;
  zipball_url : string prop;
}

let make ?body ?discussion_category_name ?draft
    ?generate_release_notes ?id ?name ?prerelease ?target_commitish
    ~repository ~tag_name __id =
  let __type = "github_release" in
  let __attrs =
    ({
       tf_name = __id;
       assets_url = Prop.computed __type __id "assets_url";
       body = Prop.computed __type __id "body";
       created_at = Prop.computed __type __id "created_at";
       discussion_category_name =
         Prop.computed __type __id "discussion_category_name";
       draft = Prop.computed __type __id "draft";
       etag = Prop.computed __type __id "etag";
       generate_release_notes =
         Prop.computed __type __id "generate_release_notes";
       html_url = Prop.computed __type __id "html_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       prerelease = Prop.computed __type __id "prerelease";
       published_at = Prop.computed __type __id "published_at";
       release_id = Prop.computed __type __id "release_id";
       repository = Prop.computed __type __id "repository";
       tag_name = Prop.computed __type __id "tag_name";
       tarball_url = Prop.computed __type __id "tarball_url";
       target_commitish =
         Prop.computed __type __id "target_commitish";
       upload_url = Prop.computed __type __id "upload_url";
       url = Prop.computed __type __id "url";
       zipball_url = Prop.computed __type __id "zipball_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_release
        (github_release ?body ?discussion_category_name ?draft
           ?generate_release_notes ?id ?name ?prerelease
           ?target_commitish ~repository ~tag_name ());
    attrs = __attrs;
  }

let register ?tf_module ?body ?discussion_category_name ?draft
    ?generate_release_notes ?id ?name ?prerelease ?target_commitish
    ~repository ~tag_name __id =
  let (r : _ Tf_core.resource) =
    make ?body ?discussion_category_name ?draft
      ?generate_release_notes ?id ?name ?prerelease ?target_commitish
      ~repository ~tag_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
