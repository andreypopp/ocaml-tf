(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assets = {
  browser_download_url : string prop;
  content_type : string prop;
  created_at : string prop;
  id : float prop;
  label : string prop;
  name : string prop;
  node_id : string prop;
  size : float prop;
  updated_at : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assets) -> ()

let yojson_of_assets =
  (function
   | {
       browser_download_url = v_browser_download_url;
       content_type = v_content_type;
       created_at = v_created_at;
       id = v_id;
       label = v_label;
       name = v_name;
       node_id = v_node_id;
       size = v_size;
       updated_at = v_updated_at;
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
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_id in
         ("node_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_browser_download_url
         in
         ("browser_download_url", arg) :: bnds
       in
       `Assoc bnds
    : assets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assets

[@@@deriving.end]

type github_release = {
  id : string prop option; [@option]
  owner : string prop;
  release_id : float prop option; [@option]
  release_tag : string prop option; [@option]
  repository : string prop;
  retrieve_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_release) -> ()

let yojson_of_github_release =
  (function
   | {
       id = v_id;
       owner = v_owner;
       release_id = v_release_id;
       release_tag = v_release_tag;
       repository = v_repository;
       retrieve_by = v_retrieve_by;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_retrieve_by in
         ("retrieve_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_release_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_release_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "release_id", arg in
             bnd :: bnds
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
       `Assoc bnds
    : github_release -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_release

[@@@deriving.end]

let github_release ?id ?release_id ?release_tag ~owner ~repository
    ~retrieve_by () : github_release =
  { id; owner; release_id; release_tag; repository; retrieve_by }

type t = {
  tf_name : string;
  asserts_url : string prop;
  assets : assets list prop;
  assets_url : string prop;
  body : string prop;
  created_at : string prop;
  draft : bool prop;
  html_url : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  prerelease : bool prop;
  published_at : string prop;
  release_id : float prop;
  release_tag : string prop;
  repository : string prop;
  retrieve_by : string prop;
  tarball_url : string prop;
  target_commitish : string prop;
  upload_url : string prop;
  url : string prop;
  zipball_url : string prop;
}

let make ?id ?release_id ?release_tag ~owner ~repository ~retrieve_by
    __id =
  let __type = "github_release" in
  let __attrs =
    ({
       tf_name = __id;
       asserts_url = Prop.computed __type __id "asserts_url";
       assets = Prop.computed __type __id "assets";
       assets_url = Prop.computed __type __id "assets_url";
       body = Prop.computed __type __id "body";
       created_at = Prop.computed __type __id "created_at";
       draft = Prop.computed __type __id "draft";
       html_url = Prop.computed __type __id "html_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       prerelease = Prop.computed __type __id "prerelease";
       published_at = Prop.computed __type __id "published_at";
       release_id = Prop.computed __type __id "release_id";
       release_tag = Prop.computed __type __id "release_tag";
       repository = Prop.computed __type __id "repository";
       retrieve_by = Prop.computed __type __id "retrieve_by";
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
        (github_release ?id ?release_id ?release_tag ~owner
           ~repository ~retrieve_by ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?release_id ?release_tag ~owner
    ~repository ~retrieve_by __id =
  let (r : _ Tf_core.resource) =
    make ?id ?release_id ?release_tag ~owner ~repository ~retrieve_by
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
