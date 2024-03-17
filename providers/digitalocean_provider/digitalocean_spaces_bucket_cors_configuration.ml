(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_spaces_bucket_cors_configuration__cors_rule = {
  allowed_headers : string list option; [@option]
      (** allowed_headers *)
  allowed_methods : string list;  (** allowed_methods *)
  allowed_origins : string list;  (** allowed_origins *)
  expose_headers : string list option; [@option]
      (** expose_headers *)
  id : string option; [@option]  (** id *)
  max_age_seconds : float option; [@option]  (** max_age_seconds *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_cors_configuration__cors_rule *)

type digitalocean_spaces_bucket_cors_configuration = {
  bucket : string;  (** Bucket ID *)
  region : string;  (** region *)
  cors_rule :
    digitalocean_spaces_bucket_cors_configuration__cors_rule list;
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_cors_configuration *)

let digitalocean_spaces_bucket_cors_configuration ~bucket ~region
    ~cors_rule __resource_id =
  let __resource_type =
    "digitalocean_spaces_bucket_cors_configuration"
  in
  let __resource = { bucket; region; cors_rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_spaces_bucket_cors_configuration
       __resource);
  ()
