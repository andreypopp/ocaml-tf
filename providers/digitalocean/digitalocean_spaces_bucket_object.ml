(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket_object = {
  acl : string prop option; [@option]
  bucket : string prop;
  cache_control : string prop option; [@option]
  content : string prop option; [@option]
  content_base64 : string prop option; [@option]
  content_disposition : string prop option; [@option]
  content_encoding : string prop option; [@option]
  content_language : string prop option; [@option]
  content_type : string prop option; [@option]
  etag : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  metadata : string prop Tf_core.assoc option; [@option]
  region : string prop;
  source : string prop option; [@option]
  website_redirect : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket_object) -> ()

let yojson_of_digitalocean_spaces_bucket_object =
  (function
   | {
       acl = v_acl;
       bucket = v_bucket;
       cache_control = v_cache_control;
       content = v_content;
       content_base64 = v_content_base64;
       content_disposition = v_content_disposition;
       content_encoding = v_content_encoding;
       content_language = v_content_language;
       content_type = v_content_type;
       etag = v_etag;
       force_destroy = v_force_destroy;
       id = v_id;
       key = v_key;
       metadata = v_metadata;
       region = v_region;
       source = v_source;
       website_redirect = v_website_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_website_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "website_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_disposition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_control", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         match v_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_spaces_bucket_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket_object

[@@@deriving.end]

let digitalocean_spaces_bucket_object ?acl ?cache_control ?content
    ?content_base64 ?content_disposition ?content_encoding
    ?content_language ?content_type ?etag ?force_destroy ?id
    ?metadata ?source ?website_redirect ~bucket ~key ~region () :
    digitalocean_spaces_bucket_object =
  {
    acl;
    bucket;
    cache_control;
    content;
    content_base64;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    etag;
    force_destroy;
    id;
    key;
    metadata;
    region;
    source;
    website_redirect;
  }

type t = {
  tf_name : string;
  acl : string prop;
  bucket : string prop;
  cache_control : string prop;
  content : string prop;
  content_base64 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  metadata : string Tf_core.assoc prop;
  region : string prop;
  source : string prop;
  version_id : string prop;
  website_redirect : string prop;
}

let make ?acl ?cache_control ?content ?content_base64
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?etag ?force_destroy ?id ?metadata ?source
    ?website_redirect ~bucket ~key ~region __id =
  let __type = "digitalocean_spaces_bucket_object" in
  let __attrs =
    ({
       tf_name = __id;
       acl = Prop.computed __type __id "acl";
       bucket = Prop.computed __type __id "bucket";
       cache_control = Prop.computed __type __id "cache_control";
       content = Prop.computed __type __id "content";
       content_base64 = Prop.computed __type __id "content_base64";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       metadata = Prop.computed __type __id "metadata";
       region = Prop.computed __type __id "region";
       source = Prop.computed __type __id "source";
       version_id = Prop.computed __type __id "version_id";
       website_redirect =
         Prop.computed __type __id "website_redirect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket_object
        (digitalocean_spaces_bucket_object ?acl ?cache_control
           ?content ?content_base64 ?content_disposition
           ?content_encoding ?content_language ?content_type ?etag
           ?force_destroy ?id ?metadata ?source ?website_redirect
           ~bucket ~key ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?acl ?cache_control ?content ?content_base64
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?etag ?force_destroy ?id ?metadata ?source
    ?website_redirect ~bucket ~key ~region __id =
  let (r : _ Tf_core.resource) =
    make ?acl ?cache_control ?content ?content_base64
      ?content_disposition ?content_encoding ?content_language
      ?content_type ?etag ?force_destroy ?id ?metadata ?source
      ?website_redirect ~bucket ~key ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
