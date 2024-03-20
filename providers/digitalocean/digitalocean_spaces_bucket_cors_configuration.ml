(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  id : string prop option; [@option]  (** id *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** cors_rule *)

type digitalocean_spaces_bucket_cors_configuration = {
  bucket : string prop;  (** Bucket ID *)
  id : string prop option; [@option]  (** id *)
  region : string prop;  (** region *)
  cors_rule : cors_rule list;
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_cors_configuration *)

let cors_rule ?allowed_headers ?expose_headers ?id ?max_age_seconds
    ~allowed_methods ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    expose_headers;
    id;
    max_age_seconds;
  }

let digitalocean_spaces_bucket_cors_configuration ?id ~bucket ~region
    ~cors_rule () : digitalocean_spaces_bucket_cors_configuration =
  { bucket; id; region; cors_rule }

type t = {
  bucket : string prop;
  id : string prop;
  region : string prop;
}

let make ?id ~bucket ~region ~cors_rule __id =
  let __type = "digitalocean_spaces_bucket_cors_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket_cors_configuration
        (digitalocean_spaces_bucket_cors_configuration ?id ~bucket
           ~region ~cors_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~region ~cors_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket ~region ~cors_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
