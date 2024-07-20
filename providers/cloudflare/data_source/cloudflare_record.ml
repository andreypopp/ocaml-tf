(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_record = {
  content : string prop option; [@option]
  hostname : string prop;
  id : string prop option; [@option]
  priority : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_record) -> ()

let yojson_of_cloudflare_record =
  (function
   | {
       content = v_content;
       hostname = v_hostname;
       id = v_id;
       priority = v_priority;
       type_ = v_type_;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_record

[@@@deriving.end]

let cloudflare_record ?content ?id ?priority ?type_ ~hostname
    ~zone_id () : cloudflare_record =
  { content; hostname; id; priority; type_; zone_id }

type t = {
  tf_name : string;
  content : string prop;
  hostname : string prop;
  id : string prop;
  priority : float prop;
  proxiable : bool prop;
  proxied : bool prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  zone_id : string prop;
  zone_name : string prop;
}

let make ?content ?id ?priority ?type_ ~hostname ~zone_id __id =
  let __type = "cloudflare_record" in
  let __attrs =
    ({
       tf_name = __id;
       content = Prop.computed __type __id "content";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       proxiable = Prop.computed __type __id "proxiable";
       proxied = Prop.computed __type __id "proxied";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       zone_id = Prop.computed __type __id "zone_id";
       zone_name = Prop.computed __type __id "zone_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_record
        (cloudflare_record ?content ?id ?priority ?type_ ~hostname
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?content ?id ?priority ?type_ ~hostname
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?content ?id ?priority ?type_ ~hostname ~zone_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
