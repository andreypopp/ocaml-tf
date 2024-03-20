(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network_route = {
  destination : string prop;
  gateway : string prop;
  id : string prop option; [@option]
  network_id : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_network_route) -> ()

let yojson_of_hcloud_network_route =
  (function
   | {
       destination = v_destination;
       gateway = v_gateway;
       id = v_id;
       network_id = v_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_network_id in
         ("network_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_gateway in
         ("gateway", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : hcloud_network_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_network_route

[@@@deriving.end]

let hcloud_network_route ?id ~destination ~gateway ~network_id () :
    hcloud_network_route =
  { destination; gateway; id; network_id }

type t = {
  destination : string prop;
  gateway : string prop;
  id : string prop;
  network_id : float prop;
}

let make ?id ~destination ~gateway ~network_id __id =
  let __type = "hcloud_network_route" in
  let __attrs =
    ({
       destination = Prop.computed __type __id "destination";
       gateway = Prop.computed __type __id "gateway";
       id = Prop.computed __type __id "id";
       network_id = Prop.computed __type __id "network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network_route
        (hcloud_network_route ?id ~destination ~gateway ~network_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~destination ~gateway ~network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~destination ~gateway ~network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
