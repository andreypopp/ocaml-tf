(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_backend_bucket_signed_url_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_backend_bucket_signed_url_key__timeouts *)

type google_compute_backend_bucket_signed_url_key = {
  backend_bucket : string;
      (** The backend bucket this signed URL key belongs. *)
  key_value : string;
      (** 128-bit key value used for signing the URL. The key value must be a
valid RFC 4648 Section 5 base64url encoded string. *)
  name : string;  (** Name of the signed URL key. *)
  timeouts :
    google_compute_backend_bucket_signed_url_key__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_backend_bucket_signed_url_key *)

let google_compute_backend_bucket_signed_url_key ?timeouts
    ~backend_bucket ~key_value ~name __resource_id =
  let __resource_type =
    "google_compute_backend_bucket_signed_url_key"
  in
  let __resource = { backend_bucket; key_value; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_backend_bucket_signed_url_key
       __resource);
  ()
