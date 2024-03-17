(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_spaces_bucket_object = {
  acl : string option; [@option]  (** acl *)
  bucket : string;  (** bucket *)
  cache_control : string option; [@option]  (** cache_control *)
  content : string option; [@option]  (** content *)
  content_base64 : string option; [@option]  (** content_base64 *)
  content_disposition : string option; [@option]
      (** content_disposition *)
  content_encoding : string option; [@option]
      (** content_encoding *)
  content_language : string option; [@option]
      (** content_language *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  key : string;  (** key *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  region : string;  (** region *)
  source : string option; [@option]  (** source *)
  website_redirect : string option; [@option]  (** website_redirect *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_object *)

let digitalocean_spaces_bucket_object ?acl ?cache_control ?content
    ?content_base64 ?content_disposition ?content_encoding
    ?content_language ?force_destroy ?metadata ?source
    ?website_redirect ~bucket ~key ~region __resource_id =
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
      force_destroy;
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
