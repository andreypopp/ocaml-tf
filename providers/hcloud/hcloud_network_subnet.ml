(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network_subnet = {
  id : string prop option; [@option]
  ip_range : string prop;
  network_id : float prop;
  network_zone : string prop;
  type_ : string prop; [@key "type"]
  vswitch_id : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_network_subnet) -> ()

let yojson_of_hcloud_network_subnet =
  (function
   | {
       id = v_id;
       ip_range = v_ip_range;
       network_id = v_network_id;
       network_zone = v_network_zone;
       type_ = v_type_;
       vswitch_id = v_vswitch_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vswitch_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vswitch_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_zone in
         ("network_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_network_id in
         ("network_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
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
    : hcloud_network_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_network_subnet

[@@@deriving.end]

let hcloud_network_subnet ?id ?vswitch_id ~ip_range ~network_id
    ~network_zone ~type_ () : hcloud_network_subnet =
  { id; ip_range; network_id; network_zone; type_; vswitch_id }

type t = {
  gateway : string prop;
  id : string prop;
  ip_range : string prop;
  network_id : float prop;
  network_zone : string prop;
  type_ : string prop;
  vswitch_id : float prop;
}

let make ?id ?vswitch_id ~ip_range ~network_id ~network_zone ~type_
    __id =
  let __type = "hcloud_network_subnet" in
  let __attrs =
    ({
       gateway = Prop.computed __type __id "gateway";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       network_id = Prop.computed __type __id "network_id";
       network_zone = Prop.computed __type __id "network_zone";
       type_ = Prop.computed __type __id "type";
       vswitch_id = Prop.computed __type __id "vswitch_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network_subnet
        (hcloud_network_subnet ?id ?vswitch_id ~ip_range ~network_id
           ~network_zone ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?vswitch_id ~ip_range ~network_id
    ~network_zone ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?vswitch_id ~ip_range ~network_id ~network_zone ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
