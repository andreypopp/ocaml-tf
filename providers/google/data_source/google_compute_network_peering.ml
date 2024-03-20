(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_compute_network_peering = {
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network_peering) -> ()

let yojson_of_google_compute_network_peering =
  (function
   | {
       id = v_id;
       name = v_name;
       network = v_network;
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
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
       `Assoc bnds
    : google_compute_network_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network_peering

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let google_compute_network_peering ?id ?timeouts ~name ~network () :
    google_compute_network_peering =
  { id; name; network; timeouts }

type t = {
  export_custom_routes : bool prop;
  export_subnet_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_subnet_routes_with_public_ip : bool prop;
  name : string prop;
  network : string prop;
  peer_network : string prop;
  stack_type : string prop;
  state : string prop;
  state_details : string prop;
}

let make ?id ?timeouts ~name ~network __id =
  let __type = "google_compute_network_peering" in
  let __attrs =
    ({
       export_custom_routes =
         Prop.computed __type __id "export_custom_routes";
       export_subnet_routes_with_public_ip =
         Prop.computed __type __id
           "export_subnet_routes_with_public_ip";
       id = Prop.computed __type __id "id";
       import_custom_routes =
         Prop.computed __type __id "import_custom_routes";
       import_subnet_routes_with_public_ip =
         Prop.computed __type __id
           "import_subnet_routes_with_public_ip";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       peer_network = Prop.computed __type __id "peer_network";
       stack_type = Prop.computed __type __id "stack_type";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_peering
        (google_compute_network_peering ?id ?timeouts ~name ~network
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~network __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
