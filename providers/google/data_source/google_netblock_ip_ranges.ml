(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_netblock_ip_ranges = {
  id : string prop option; [@option]
  range_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netblock_ip_ranges) -> ()

let yojson_of_google_netblock_ip_ranges =
  (function
   | { id = v_id; range_type = v_range_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_range_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_type", arg in
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
    : google_netblock_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netblock_ip_ranges

[@@@deriving.end]

let google_netblock_ip_ranges ?id ?range_type () :
    google_netblock_ip_ranges =
  { id; range_type }

type t = {
  tf_name : string;
  cidr_blocks : string list prop;
  cidr_blocks_ipv4 : string list prop;
  cidr_blocks_ipv6 : string list prop;
  id : string prop;
  range_type : string prop;
}

let make ?id ?range_type __id =
  let __type = "google_netblock_ip_ranges" in
  let __attrs =
    ({
       tf_name = __id;
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       cidr_blocks_ipv4 =
         Prop.computed __type __id "cidr_blocks_ipv4";
       cidr_blocks_ipv6 =
         Prop.computed __type __id "cidr_blocks_ipv6";
       id = Prop.computed __type __id "id";
       range_type = Prop.computed __type __id "range_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netblock_ip_ranges
        (google_netblock_ip_ranges ?id ?range_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?range_type __id =
  let (r : _ Tf_core.resource) = make ?id ?range_type __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
