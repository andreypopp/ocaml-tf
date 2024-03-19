(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type config = {
  sha256 : string prop;
      (** The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate. *)
  tls_sockaddr : string prop;
      (** A network address of the form host:port that the WARP client will use to detect the presence of a TLS host. *)
}
[@@deriving yojson_of]
(** The configuration containing information for the WARP client to detect the managed network. *)

type cloudflare_device_managed_networks = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the Device Managed Network. Must be unique. *)
  type_ : string prop; [@key "type"]
      (** The type of Device Managed Network. Available values: `tls`. *)
  config : config list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Managed Network resource. Device managed networks allow for building location-aware device settings policies. *)

let config ~sha256 ~tls_sockaddr () : config =
  { sha256; tls_sockaddr }

let cloudflare_device_managed_networks ?id ~account_id ~name ~type_
    ~config () : cloudflare_device_managed_networks =
  { account_id; id; name; type_; config }

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let register ?tf_module ?id ~account_id ~name ~type_ ~config
    __resource_id =
  let __resource_type = "cloudflare_device_managed_networks" in
  let __resource =
    cloudflare_device_managed_networks ?id ~account_id ~name ~type_
      ~config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_managed_networks __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
