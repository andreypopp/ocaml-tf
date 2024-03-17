(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_mutual_tls_certificate = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  associated_hostnames : string list option; [@option]
      (** The hostnames that will be prompted for this certificate. *)
  certificate : string option; [@option]
      (** The Root CA for your certificates. *)
  id : string option; [@option]  (** id *)
  name : string;  (** The name of the certificate. *)
  zone_id : string option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Mutual TLS Certificate resource.
Mutual TLS authentication ensures that the traffic is secure and
trusted in both directions between a client and server and can be
 used with Access to only allows requests from devices with a
 corresponding client certificate.
 *)

let cloudflare_access_mutual_tls_certificate ?account_id
    ?associated_hostnames ?certificate ?id ?zone_id ~name
    __resource_id =
  let __resource_type = "cloudflare_access_mutual_tls_certificate" in
  let __resource =
    {
      account_id;
      associated_hostnames;
      certificate;
      id;
      name;
      zone_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_mutual_tls_certificate __resource);
  ()
