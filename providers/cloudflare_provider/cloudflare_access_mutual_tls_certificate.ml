(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_access_mutual_tls_certificate = {
  associated_hostnames : string list option; [@option]
      (** The hostnames that will be prompted for this certificate. *)
  certificate : string option; [@option]
      (** The Root CA for your certificates. *)
  name : string;  (** The name of the certificate. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Mutual TLS Certificate resource.
Mutual TLS authentication ensures that the traffic is secure and
trusted in both directions between a client and server and can be
 used with Access to only allows requests from devices with a
 corresponding client certificate.
 *)

let cloudflare_access_mutual_tls_certificate ?associated_hostnames
    ?certificate ~name __resource_id =
  let __resource_type = "cloudflare_access_mutual_tls_certificate" in
  let __resource = { associated_hostnames; certificate; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_mutual_tls_certificate __resource);
  ()
