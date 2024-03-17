(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ?metadata ?source ?website_redirect ~bucket ~key ~region
    __resource_id =
  let __resource_type = "digitalocean_spaces_bucket_object" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_spaces_bucket_object __resource);
  ()
