(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_cdn = {
  certificate_id : string prop option; [@option]
  certificate_name : string prop option; [@option]
  custom_domain : string prop option; [@option]
  id : string prop option; [@option]
  origin : string prop;
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_cdn) -> ()

let yojson_of_digitalocean_cdn =
  (function
   | {
       certificate_id = v_certificate_id;
       certificate_name = v_certificate_name;
       custom_domain = v_custom_domain;
       id = v_id;
       origin = v_origin;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
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
         match v_custom_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_cdn -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_cdn

[@@@deriving.end]

let digitalocean_cdn ?certificate_id ?certificate_name ?custom_domain
    ?id ?ttl ~origin () : digitalocean_cdn =
  {
    certificate_id;
    certificate_name;
    custom_domain;
    id;
    origin;
    ttl;
  }

type t = {
  tf_name : string;
  certificate_id : string prop;
  certificate_name : string prop;
  created_at : string prop;
  custom_domain : string prop;
  endpoint : string prop;
  id : string prop;
  origin : string prop;
  ttl : float prop;
}

let make ?certificate_id ?certificate_name ?custom_domain ?id ?ttl
    ~origin __id =
  let __type = "digitalocean_cdn" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_id = Prop.computed __type __id "certificate_id";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       created_at = Prop.computed __type __id "created_at";
       custom_domain = Prop.computed __type __id "custom_domain";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       origin = Prop.computed __type __id "origin";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_cdn
        (digitalocean_cdn ?certificate_id ?certificate_name
           ?custom_domain ?id ?ttl ~origin ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_id ?certificate_name
    ?custom_domain ?id ?ttl ~origin __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_id ?certificate_name ?custom_domain ?id ?ttl
      ~origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
