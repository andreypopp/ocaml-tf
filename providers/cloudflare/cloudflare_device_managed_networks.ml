(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~account_id ~name ~type_ ~config __id =
  let __type = "cloudflare_device_managed_networks" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_managed_networks
        (cloudflare_device_managed_networks ?id ~account_id ~name
           ~type_ ~config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~name ~type_ ~config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~name ~type_ ~config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
