(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data = {
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  data : data list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare record resource. *)

let data ?algorithm ?altitude ?certificate ?content ?digest
    ?digest_type ?fingerprint ?flags ?key_tag ?lat_degrees
    ?lat_direction ?lat_minutes ?lat_seconds ?long_degrees
    ?long_direction ?long_minutes ?long_seconds ?matching_type ?name
    ?order ?port ?precision_horz ?precision_vert ?preference
    ?priority ?proto ?protocol ?public_key ?regex ?replacement
    ?selector ?service ?size ?tag ?target ?type_ ?usage ?value
    ?weight () : data =
  {
    algorithm;
    altitude;
    certificate;
    content;
    digest;
    digest_type;
    fingerprint;
    flags;
    key_tag;
    lat_degrees;
    lat_direction;
    lat_minutes;
    lat_seconds;
    long_degrees;
    long_direction;
    long_minutes;
    long_seconds;
    matching_type;
    name;
    order;
    port;
    precision_horz;
    precision_vert;
    preference;
    priority;
    proto;
    protocol;
    public_key;
    regex;
    replacement;
    selector;
    service;
    size;
    tag;
    target;
    type_;
    usage;
    value;
    weight;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let cloudflare_record ?allow_overwrite ?comment ?id ?priority
    ?proxied ?tags ?ttl ?value ?timeouts ~name ~type_ ~zone_id ~data
    () : cloudflare_record =
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

type t = {
  allow_overwrite : bool prop;
  comment : string prop;
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  modified_on : string prop;
  name : string prop;
  priority : float prop;
  proxiable : bool prop;
  proxied : bool prop;
  tags : string list prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  zone_id : string prop;
}

let register ?tf_module ?allow_overwrite ?comment ?id ?priority
    ?proxied ?tags ?ttl ?value ?timeouts ~name ~type_ ~zone_id ~data
    __resource_id =
  let __resource_type = "cloudflare_record" in
  let __resource =
    cloudflare_record ?allow_overwrite ?comment ?id ?priority
      ?proxied ?tags ?ttl ?value ?timeouts ~name ~type_ ~zone_id
      ~data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_record __resource);
  let __resource_attributes =
    ({
       allow_overwrite =
         Prop.computed __resource_type __resource_id
           "allow_overwrite";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       modified_on =
         Prop.computed __resource_type __resource_id "modified_on";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       proxiable =
         Prop.computed __resource_type __resource_id "proxiable";
       proxied =
         Prop.computed __resource_type __resource_id "proxied";
       tags = Prop.computed __resource_type __resource_id "tags";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       type_ = Prop.computed __resource_type __resource_id "type";
       value = Prop.computed __resource_type __resource_id "value";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
