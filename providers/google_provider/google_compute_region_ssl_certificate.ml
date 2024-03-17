(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_region_ssl_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_ssl_certificate__timeouts *)

type google_compute_region_ssl_certificate = {
  certificate : string;
      (** The certificate in PEM format.
The certificate chain must be no greater than 5 certs long.
The chain must include at least one intermediate cert. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  private_key : string;
      (** The write-only private key in PEM format. *)
  timeouts : google_compute_region_ssl_certificate__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_ssl_certificate *)

let google_compute_region_ssl_certificate ?description ?timeouts
    ~certificate ~private_key __resource_id =
  let __resource_type = "google_compute_region_ssl_certificate" in
  let __resource =
    { certificate; description; private_key; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_ssl_certificate __resource);
  ()
