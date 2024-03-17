(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_record__data = {
  algorithm : float option; [@option]  (** algorithm *)
  altitude : float option; [@option]  (** altitude *)
  certificate : string option; [@option]  (** certificate *)
  content : string option; [@option]  (** content *)
  digest : string option; [@option]  (** digest *)
  digest_type : float option; [@option]  (** digest_type *)
  fingerprint : string option; [@option]  (** fingerprint *)
  flags : string option; [@option]  (** flags *)
  key_tag : float option; [@option]  (** key_tag *)
  lat_degrees : float option; [@option]  (** lat_degrees *)
  lat_direction : string option; [@option]  (** lat_direction *)
  lat_minutes : float option; [@option]  (** lat_minutes *)
  lat_seconds : float option; [@option]  (** lat_seconds *)
  long_degrees : float option; [@option]  (** long_degrees *)
  long_direction : string option; [@option]  (** long_direction *)
  long_minutes : float option; [@option]  (** long_minutes *)
  long_seconds : float option; [@option]  (** long_seconds *)
  matching_type : float option; [@option]  (** matching_type *)
  name : string option; [@option]  (** name *)
  order : float option; [@option]  (** order *)
  port : float option; [@option]  (** port *)
  precision_horz : float option; [@option]  (** precision_horz *)
  precision_vert : float option; [@option]  (** precision_vert *)
  preference : float option; [@option]  (** preference *)
  priority : float option; [@option]  (** priority *)
  proto : string option; [@option]  (** proto *)
  protocol : float option; [@option]  (** protocol *)
  public_key : string option; [@option]  (** public_key *)
  regex : string option; [@option]  (** regex *)
  replacement : string option; [@option]  (** replacement *)
  selector : float option; [@option]  (** selector *)
  service : string option; [@option]  (** service *)
  size : float option; [@option]  (** size *)
  tag : string option; [@option]  (** tag *)
  target : string option; [@option]  (** target *)
  type_ : float option; [@option] [@key "type"]  (** type *)
  usage : float option; [@option]  (** usage *)
  value : string option; [@option]  (** value *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** Map of attributes that constitute the record value. Conflicts with `value`. *)

type cloudflare_record__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** cloudflare_record__timeouts *)

type cloudflare_record = {
  allow_overwrite : bool option; [@option]
      (** Allow creation of this record in Terraform to overwrite an existing record, if any. This does not affect the ability to update the record in Terraform and does not prevent other resources within Terraform or manual changes outside Terraform from overwriting this record. **This configuration is not recommended for most environments**. Defaults to `false`. *)
  comment : string option; [@option]
      (** Comments or notes about the DNS record. This field has no effect on DNS responses. *)
  name : string;
      (** The name of the record. **Modifying this attribute will force creation of a new resource.** *)
  priority : float option; [@option]
      (** The priority of the record. *)
  proxied : bool option; [@option]
      (** Whether the record gets Cloudflare's origin protection. *)
  tags : string list option; [@option]
      (** Custom tags for the DNS record. *)
  type_ : string; [@key "type"]
      (** The type of the record. Available values: `A`, `AAAA`, `CAA`, `CNAME`, `TXT`, `SRV`, `LOC`, `MX`, `NS`, `SPF`, `CERT`, `DNSKEY`, `DS`, `NAPTR`, `SMIMEA`, `SSHFP`, `TLSA`, `URI`, `PTR`, `HTTPS`, `SVCB`. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  data : cloudflare_record__data list;
  timeouts : cloudflare_record__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare record resource. *)

let cloudflare_record ?allow_overwrite ?comment ?priority ?proxied
    ?tags ?timeouts ~name ~type_ ~zone_id ~data __resource_id =
  let __resource_type = "cloudflare_record" in
  let __resource =
    {
      allow_overwrite;
      comment;
      name;
      priority;
      proxied;
      tags;
      type_;
      zone_id;
      data;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_record __resource);
  ()
