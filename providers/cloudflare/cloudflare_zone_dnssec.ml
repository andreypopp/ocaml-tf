(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone_dnssec = {
  id : string prop option; [@option]
  modified_on : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone_dnssec) -> ()

let yojson_of_cloudflare_zone_dnssec =
  (function
   | { id = v_id; modified_on = v_modified_on; zone_id = v_zone_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_modified_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "modified_on", arg in
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
       `Assoc bnds
    : cloudflare_zone_dnssec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone_dnssec

[@@@deriving.end]

let cloudflare_zone_dnssec ?id ?modified_on ~zone_id () :
    cloudflare_zone_dnssec =
  { id; modified_on; zone_id }

type t = {
  tf_name : string;
  algorithm : string prop;
  digest : string prop;
  digest_algorithm : string prop;
  digest_type : string prop;
  ds : string prop;
  flags : float prop;
  id : string prop;
  key_tag : float prop;
  key_type : string prop;
  modified_on : string prop;
  public_key : string prop;
  status : string prop;
  zone_id : string prop;
}

let make ?id ?modified_on ~zone_id __id =
  let __type = "cloudflare_zone_dnssec" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       digest = Prop.computed __type __id "digest";
       digest_algorithm =
         Prop.computed __type __id "digest_algorithm";
       digest_type = Prop.computed __type __id "digest_type";
       ds = Prop.computed __type __id "ds";
       flags = Prop.computed __type __id "flags";
       id = Prop.computed __type __id "id";
       key_tag = Prop.computed __type __id "key_tag";
       key_type = Prop.computed __type __id "key_type";
       modified_on = Prop.computed __type __id "modified_on";
       public_key = Prop.computed __type __id "public_key";
       status = Prop.computed __type __id "status";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_dnssec
        (cloudflare_zone_dnssec ?id ?modified_on ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?modified_on ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?modified_on ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
