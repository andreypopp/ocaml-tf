(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket_object = {
  bucket : string prop;
  id : string prop option; [@option]
  key : string prop;
  range : string prop option; [@option]
  region : string prop;
  version_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket_object) -> ()

let yojson_of_digitalocean_spaces_bucket_object =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       key = v_key;
       range = v_range;
       region = v_region;
       version_id = v_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_spaces_bucket_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket_object

[@@@deriving.end]

let digitalocean_spaces_bucket_object ?id ?range ?version_id ~bucket
    ~key ~region () : digitalocean_spaces_bucket_object =
  { bucket; id; key; range; region; version_id }

type t = {
  tf_name : string;
  body : string prop;
  bucket : string prop;
  cache_control : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_length : float prop;
  content_type : string prop;
  etag : string prop;
  expiration : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
  last_modified : string prop;
  metadata : string Tf_core.assoc prop;
  range : string prop;
  region : string prop;
  version_id : string prop;
  website_redirect_location : string prop;
}

let make ?id ?range ?version_id ~bucket ~key ~region __id =
  let __type = "digitalocean_spaces_bucket_object" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       bucket = Prop.computed __type __id "bucket";
       cache_control = Prop.computed __type __id "cache_control";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_length = Prop.computed __type __id "content_length";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       expiration = Prop.computed __type __id "expiration";
       expires = Prop.computed __type __id "expires";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       last_modified = Prop.computed __type __id "last_modified";
       metadata = Prop.computed __type __id "metadata";
       range = Prop.computed __type __id "range";
       region = Prop.computed __type __id "region";
       version_id = Prop.computed __type __id "version_id";
       website_redirect_location =
         Prop.computed __type __id "website_redirect_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket_object
        (digitalocean_spaces_bucket_object ?id ?range ?version_id
           ~bucket ~key ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?range ?version_id ~bucket ~key ~region
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?range ?version_id ~bucket ~key ~region __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
