(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_access_mutual_tls_certificate ?account_id
    ?associated_hostnames ?certificate ?id ?zone_id ~name () :
    cloudflare_access_mutual_tls_certificate =
  {
    account_id;
    associated_hostnames;
    certificate;
    id;
    name;
    zone_id;
  }

type t = {
  account_id : string prop;
  associated_hostnames : string list prop;
  certificate : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

let make ?account_id ?associated_hostnames ?certificate ?id ?zone_id
    ~name __id =
  let __type = "cloudflare_access_mutual_tls_certificate" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       associated_hostnames =
         Prop.computed __type __id "associated_hostnames";
       certificate = Prop.computed __type __id "certificate";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_mutual_tls_certificate
        (cloudflare_access_mutual_tls_certificate ?account_id
           ?associated_hostnames ?certificate ?id ?zone_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?associated_hostnames
    ?certificate ?id ?zone_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?associated_hostnames ?certificate ?id ?zone_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
