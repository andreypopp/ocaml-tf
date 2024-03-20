(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data = {
  algorithm : float prop option; [@option]
  altitude : float prop option; [@option]
  certificate : string prop option; [@option]
  content : string prop option; [@option]
  digest : string prop option; [@option]
  digest_type : float prop option; [@option]
  fingerprint : string prop option; [@option]
  flags : string prop option; [@option]
  key_tag : float prop option; [@option]
  lat_degrees : float prop option; [@option]
  lat_direction : string prop option; [@option]
  lat_minutes : float prop option; [@option]
  lat_seconds : float prop option; [@option]
  long_degrees : float prop option; [@option]
  long_direction : string prop option; [@option]
  long_minutes : float prop option; [@option]
  long_seconds : float prop option; [@option]
  matching_type : float prop option; [@option]
  name : string prop option; [@option]
  order : float prop option; [@option]
  port : float prop option; [@option]
  precision_horz : float prop option; [@option]
  precision_vert : float prop option; [@option]
  preference : float prop option; [@option]
  priority : float prop option; [@option]
  proto : string prop option; [@option]
  protocol : float prop option; [@option]
  public_key : string prop option; [@option]
  regex : string prop option; [@option]
  replacement : string prop option; [@option]
  selector : float prop option; [@option]
  service : string prop option; [@option]
  size : float prop option; [@option]
  tag : string prop option; [@option]
  target : string prop option; [@option]
  type_ : float prop option; [@option] [@key "type"]
  usage : float prop option; [@option]
  value : string prop option; [@option]
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data) -> ()

let yojson_of_data =
  (function
   | {
       algorithm = v_algorithm;
       altitude = v_altitude;
       certificate = v_certificate;
       content = v_content;
       digest = v_digest;
       digest_type = v_digest_type;
       fingerprint = v_fingerprint;
       flags = v_flags;
       key_tag = v_key_tag;
       lat_degrees = v_lat_degrees;
       lat_direction = v_lat_direction;
       lat_minutes = v_lat_minutes;
       lat_seconds = v_lat_seconds;
       long_degrees = v_long_degrees;
       long_direction = v_long_direction;
       long_minutes = v_long_minutes;
       long_seconds = v_long_seconds;
       matching_type = v_matching_type;
       name = v_name;
       order = v_order;
       port = v_port;
       precision_horz = v_precision_horz;
       precision_vert = v_precision_vert;
       preference = v_preference;
       priority = v_priority;
       proto = v_proto;
       protocol = v_protocol;
       public_key = v_public_key;
       regex = v_regex;
       replacement = v_replacement;
       selector = v_selector;
       service = v_service;
       size = v_size;
       tag = v_tag;
       target = v_target;
       type_ = v_type_;
       usage = v_usage;
       value = v_value;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_usage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "usage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replacement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replacement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proto with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proto", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "preference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_precision_vert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "precision_vert", arg in
             bnd :: bnds
       in
       let bnds =
         match v_precision_horz with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "precision_horz", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_matching_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "matching_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "long_direction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_degrees with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_degrees", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lat_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lat_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lat_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lat_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lat_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lat_direction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lat_degrees with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lat_degrees", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fingerprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fingerprint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "digest_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_altitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "altitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cloudflare_record = {
  allow_overwrite : bool prop option; [@option]
  comment : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  proxied : bool prop option; [@option]
  tags : string prop list option; [@option]
  ttl : float prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
  zone_id : string prop;
  data : data list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_record) -> ()

let yojson_of_cloudflare_record =
  (function
   | {
       allow_overwrite = v_allow_overwrite;
       comment = v_comment;
       id = v_id;
       name = v_name;
       priority = v_priority;
       proxied = v_proxied;
       tags = v_tags;
       ttl = v_ttl;
       type_ = v_type_;
       value = v_value;
       zone_id = v_zone_id;
       data = v_data;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_data v_data in
         ("data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxied with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "proxied", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_overwrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_overwrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_record

[@@@deriving.end]

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

let make ?allow_overwrite ?comment ?id ?priority ?proxied ?tags ?ttl
    ?value ?timeouts ~name ~type_ ~zone_id ~data __id =
  let __type = "cloudflare_record" in
  let __attrs =
    ({
       allow_overwrite = Prop.computed __type __id "allow_overwrite";
       comment = Prop.computed __type __id "comment";
       created_on = Prop.computed __type __id "created_on";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       modified_on = Prop.computed __type __id "modified_on";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       proxiable = Prop.computed __type __id "proxiable";
       proxied = Prop.computed __type __id "proxied";
       tags = Prop.computed __type __id "tags";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_record
        (cloudflare_record ?allow_overwrite ?comment ?id ?priority
           ?proxied ?tags ?ttl ?value ?timeouts ~name ~type_ ~zone_id
           ~data ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_overwrite ?comment ?id ?priority
    ?proxied ?tags ?ttl ?value ?timeouts ~name ~type_ ~zone_id ~data
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_overwrite ?comment ?id ?priority ?proxied ?tags ?ttl
      ?value ?timeouts ~name ~type_ ~zone_id ~data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
