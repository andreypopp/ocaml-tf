(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket_object = {
  acl : string prop option; [@option]  (** acl *)
  bucket : string prop;  (** bucket *)
  cache_control : string prop option; [@option]  (** cache_control *)
  content : string prop option; [@option]  (** content *)
  content_base64 : string prop option; [@option]
      (** content_base64 *)
  content_disposition : string prop option; [@option]
      (** content_disposition *)
  content_encoding : string prop option; [@option]
      (** content_encoding *)
  content_language : string prop option; [@option]
      (** content_language *)
  content_type : string prop option; [@option]  (** content_type *)
  etag : string prop option; [@option]  (** etag *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  region : string prop;  (** region *)
  source : string prop option; [@option]  (** source *)
  website_redirect : string prop option; [@option]
      (** website_redirect *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_object *)

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
  metadata : (string * string) list prop;
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
