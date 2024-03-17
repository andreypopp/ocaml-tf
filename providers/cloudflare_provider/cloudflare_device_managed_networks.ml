(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_device_managed_networks__config = {
  sha256 : string;
      (** The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate. *)
  tls_sockaddr : string;
      (** A network address of the form host:port that the WARP client will use to detect the presence of a TLS host. *)
}
[@@deriving yojson_of]
(** The configuration containing information for the WARP client to detect the managed network. *)

type cloudflare_device_managed_networks = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** The name of the Device Managed Network. Must be unique. *)
  type_ : string; [@key "type"]
      (** The type of Device Managed Network. Available values: `tls`. *)
  config : cloudflare_device_managed_networks__config list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Managed Network resource. Device managed networks allow for building location-aware device settings policies. *)

let cloudflare_device_managed_networks ?id ~account_id ~name ~type_
    ~config __resource_id =
  let __resource_type = "cloudflare_device_managed_networks" in
  let __resource = { account_id; id; name; type_; config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_managed_networks __resource);
  ()
