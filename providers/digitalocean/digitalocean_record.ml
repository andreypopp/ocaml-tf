(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_record = {
  domain : string prop;
  flags : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  port : float prop option; [@option]
  priority : float prop option; [@option]
  tag : string prop option; [@option]
  ttl : float prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_record) -> ()

let yojson_of_digitalocean_record =
  (function
   | {
       domain = v_domain;
       flags = v_flags;
       id = v_id;
       name = v_name;
       port = v_port;
       priority = v_priority;
       tag = v_tag;
       ttl = v_ttl;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
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
         match v_flags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "flags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_record

[@@@deriving.end]

let digitalocean_record ?flags ?id ?port ?priority ?tag ?ttl ?weight
    ~domain ~name ~type_ ~value () : digitalocean_record =
  {
    domain;
    flags;
    id;
    name;
    port;
    priority;
    tag;
    ttl;
    type_;
    value;
    weight;
  }

type t = {
  domain : string prop;
  flags : float prop;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  priority : float prop;
  tag : string prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  weight : float prop;
}

let make ?flags ?id ?port ?priority ?tag ?ttl ?weight ~domain ~name
    ~type_ ~value __id =
  let __type = "digitalocean_record" in
  let __attrs =
    ({
       domain = Prop.computed __type __id "domain";
       flags = Prop.computed __type __id "flags";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       priority = Prop.computed __type __id "priority";
       tag = Prop.computed __type __id "tag";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_record
        (digitalocean_record ?flags ?id ?port ?priority ?tag ?ttl
           ?weight ~domain ~name ~type_ ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?flags ?id ?port ?priority ?tag ?ttl ?weight
    ~domain ~name ~type_ ~value __id =
  let (r : _ Tf_core.resource) =
    make ?flags ?id ?port ?priority ?tag ?ttl ?weight ~domain ~name
      ~type_ ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
