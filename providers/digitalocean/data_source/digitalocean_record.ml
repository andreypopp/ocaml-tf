(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_record = {
  domain : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_record) -> ()

let yojson_of_digitalocean_record =
  (function
   | { domain = v_domain; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_record

[@@@deriving.end]

let digitalocean_record ?id ~domain ~name () : digitalocean_record =
  { domain; id; name }

type t = {
  data : string prop;
  domain : string prop;
  flags : float prop;
  id : string prop;
  name : string prop;
  port : float prop;
  priority : float prop;
  tag : string prop;
  ttl : float prop;
  type_ : string prop;
  weight : float prop;
}

let make ?id ~domain ~name __id =
  let __type = "digitalocean_record" in
  let __attrs =
    ({
       data = Prop.computed __type __id "data";
       domain = Prop.computed __type __id "domain";
       flags = Prop.computed __type __id "flags";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       priority = Prop.computed __type __id "priority";
       tag = Prop.computed __type __id "tag";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_record
        (digitalocean_record ?id ~domain ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~domain ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~domain ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
