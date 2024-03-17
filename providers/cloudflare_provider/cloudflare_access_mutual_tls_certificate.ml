(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_mutual_tls_certificate = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  associated_hostnames : string prop list option; [@option]
      (** The hostnames that will be prompted for this certificate. *)
  certificate : string prop option; [@option]
      (** The Root CA for your certificates. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the certificate. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Mutual TLS Certificate resource.
Mutual TLS authentication ensures that the traffic is secure and
trusted in both directions between a client and server and can be
 used with Access to only allows requests from devices with a
 corresponding client certificate.
 *)

type t = {
  account_id : string prop;
  associated_hostnames : string list prop;
  certificate : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

let cloudflare_access_mutual_tls_certificate ?account_id
    ?associated_hostnames ?certificate ?id ?zone_id ~name
    __resource_id =
  let __resource_type = "cloudflare_access_mutual_tls_certificate" in
  let __resource =
    ({
       account_id;
       associated_hostnames;
       certificate;
       id;
       name;
       zone_id;
     }
      : cloudflare_access_mutual_tls_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_mutual_tls_certificate __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       associated_hostnames =
         Prop.computed __resource_type __resource_id
           "associated_hostnames";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
