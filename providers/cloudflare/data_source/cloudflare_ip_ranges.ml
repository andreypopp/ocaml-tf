(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_ip_ranges = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_ip_ranges) -> ()

let yojson_of_cloudflare_ip_ranges =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : cloudflare_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_ip_ranges

[@@@deriving.end]

let cloudflare_ip_ranges ?id () : cloudflare_ip_ranges = { id }

type t = {
  china_ipv4_cidr_blocks : string list prop;
  china_ipv6_cidr_blocks : string list prop;
  cidr_blocks : string list prop;
  id : string prop;
  ipv4_cidr_blocks : string list prop;
  ipv6_cidr_blocks : string list prop;
}

let make ?id __id =
  let __type = "cloudflare_ip_ranges" in
  let __attrs =
    ({
       china_ipv4_cidr_blocks =
         Prop.computed __type __id "china_ipv4_cidr_blocks";
       china_ipv6_cidr_blocks =
         Prop.computed __type __id "china_ipv6_cidr_blocks";
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       id = Prop.computed __type __id "id";
       ipv4_cidr_blocks =
         Prop.computed __type __id "ipv4_cidr_blocks";
       ipv6_cidr_blocks =
         Prop.computed __type __id "ipv6_cidr_blocks";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_ip_ranges (cloudflare_ip_ranges ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
