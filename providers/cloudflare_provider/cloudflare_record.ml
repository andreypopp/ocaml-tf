(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_record__data = {
  algorithm : float prop option; [@option]  (** algorithm *)
  altitude : float prop option; [@option]  (** altitude *)
  certificate : string prop option; [@option]  (** certificate *)
  content : string prop option; [@option]  (** content *)
  digest : string prop option; [@option]  (** digest *)
  digest_type : float prop option; [@option]  (** digest_type *)
  fingerprint : string prop option; [@option]  (** fingerprint *)
  flags : string prop option; [@option]  (** flags *)
  key_tag : float prop option; [@option]  (** key_tag *)
  lat_degrees : float prop option; [@option]  (** lat_degrees *)
  lat_direction : string prop option; [@option]  (** lat_direction *)
  lat_minutes : float prop option; [@option]  (** lat_minutes *)
  lat_seconds : float prop option; [@option]  (** lat_seconds *)
  long_degrees : float prop option; [@option]  (** long_degrees *)
  long_direction : string prop option; [@option]
      (** long_direction *)
  long_minutes : float prop option; [@option]  (** long_minutes *)
  long_seconds : float prop option; [@option]  (** long_seconds *)
  matching_type : float prop option; [@option]  (** matching_type *)
  name : string prop option; [@option]  (** name *)
  order : float prop option; [@option]  (** order *)
  port : float prop option; [@option]  (** port *)
  precision_horz : float prop option; [@option]
      (** precision_horz *)
  precision_vert : float prop option; [@option]
      (** precision_vert *)
  preference : float prop option; [@option]  (** preference *)
  priority : float prop option; [@option]  (** priority *)
  proto : string prop option; [@option]  (** proto *)
  protocol : float prop option; [@option]  (** protocol *)
  public_key : string prop option; [@option]  (** public_key *)
  regex : string prop option; [@option]  (** regex *)
  replacement : string prop option; [@option]  (** replacement *)
  selector : float prop option; [@option]  (** selector *)
  service : string prop option; [@option]  (** service *)
  size : float prop option; [@option]  (** size *)
  tag : string prop option; [@option]  (** tag *)
  target : string prop option; [@option]  (** target *)
  type_ : float prop option; [@option] [@key "type"]  (** type *)
  usage : float prop option; [@option]  (** usage *)
  value : string prop option; [@option]  (** value *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** Map of attributes that constitute the record value. Conflicts with `value`. *)

type cloudflare_record__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** cloudflare_record__timeouts *)

type cloudflare_record = {
  allow_overwrite : bool prop option; [@option]
      (** Allow creation of this record in Terraform to overwrite an existing record, if any. This does not affect the ability to update the record in Terraform and does not prevent other resources within Terraform or manual changes outside Terraform from overwriting this record. **This configuration is not recommended for most environments**. Defaults to `false`. *)
  comment : string prop option; [@option]
      (** Comments or notes about the DNS record. This field has no effect on DNS responses. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the record. **Modifying this attribute will force creation of a new resource.** *)
  priority : float prop option; [@option]
      (** The priority of the record. *)
  proxied : bool prop option; [@option]
      (** Whether the record gets Cloudflare's origin protection. *)
  tags : string prop list option; [@option]
      (** Custom tags for the DNS record. *)
  ttl : float prop option; [@option]  (** The TTL of the record. *)
  type_ : string prop; [@key "type"]
      (** The type of the record. Available values: `A`, `AAAA`, `CAA`, `CNAME`, `TXT`, `SRV`, `LOC`, `MX`, `NS`, `SPF`, `CERT`, `DNSKEY`, `DS`, `NAPTR`, `SMIMEA`, `SSHFP`, `TLSA`, `URI`, `PTR`, `HTTPS`, `SVCB`. **Modifying this attribute will force creation of a new resource.** *)
  value : string prop option; [@option]
      (** The value of the record. Conflicts with `data`. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  data : cloudflare_record__data list;
  timeouts : cloudflare_record__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare record resource. *)

let cloudflare_record ?allow_overwrite ?comment ?id ?priority
    ?proxied ?tags ?ttl ?value ?timeouts ~name ~type_ ~zone_id ~data
    __resource_id =
  let __resource_type = "cloudflare_record" in
  let __resource =
    {
      allow_overwrite;
      comment;
      id;
      name;
      priority;
      proxied;
      tags;
      ttl;
      type_;
      value;
      zone_id;
      data;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_record __resource);
  ()
