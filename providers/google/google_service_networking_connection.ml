(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_service_networking_connection = {
  deletion_policy : string prop option; [@option]
  id : string prop option; [@option]
  network : string prop;
  reserved_peering_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  service : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_networking_connection) -> ()

let yojson_of_google_service_networking_connection =
  (function
   | {
       deletion_policy = v_deletion_policy;
       id = v_id;
       network = v_network;
       reserved_peering_ranges = v_reserved_peering_ranges;
       service = v_service;
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
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         if [] = v_reserved_peering_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_reserved_peering_ranges
           in
           let bnd = "reserved_peering_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_service_networking_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_networking_connection

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_service_networking_connection ?deletion_policy ?id
    ?timeouts ~network ~reserved_peering_ranges ~service () :
    google_service_networking_connection =
  {
    deletion_policy;
    id;
    network;
    reserved_peering_ranges;
    service;
    timeouts;
  }

type t = {
  tf_name : string;
  deletion_policy : string prop;
  id : string prop;
  network : string prop;
  peering : string prop;
  reserved_peering_ranges : string list prop;
  service : string prop;
}

let make ?deletion_policy ?id ?timeouts ~network
    ~reserved_peering_ranges ~service __id =
  let __type = "google_service_networking_connection" in
  let __attrs =
    ({
       tf_name = __id;
       deletion_policy = Prop.computed __type __id "deletion_policy";
       id = Prop.computed __type __id "id";
       network = Prop.computed __type __id "network";
       peering = Prop.computed __type __id "peering";
       reserved_peering_ranges =
         Prop.computed __type __id "reserved_peering_ranges";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_networking_connection
        (google_service_networking_connection ?deletion_policy ?id
           ?timeouts ~network ~reserved_peering_ranges ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?id ?timeouts ~network
    ~reserved_peering_ranges ~service __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?id ?timeouts ~network
      ~reserved_peering_ranges ~service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
