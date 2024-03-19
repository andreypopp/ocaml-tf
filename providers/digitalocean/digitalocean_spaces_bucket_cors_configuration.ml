(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~bucket ~region ~cors_rule __resource_id
    =
  let __resource_type =
    "digitalocean_spaces_bucket_cors_configuration"
  in
  let __resource =
    digitalocean_spaces_bucket_cors_configuration ?id ~bucket ~region
      ~cors_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_spaces_bucket_cors_configuration
       __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes
