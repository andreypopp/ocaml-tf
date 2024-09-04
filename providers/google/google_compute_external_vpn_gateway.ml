(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type interface = {
  id : float prop option; [@option]
  ip_address : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : interface) -> ()

let yojson_of_interface =
  (function
   | { id = v_id; ip_address = v_ip_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_interface

[@@@deriving.end]

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

type google_compute_external_vpn_gateway = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  project : string prop option; [@option]
  redundancy_type : string prop option; [@option]
  interface : interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_external_vpn_gateway) -> ()

let yojson_of_google_compute_external_vpn_gateway =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       redundancy_type = v_redundancy_type;
       interface = v_interface;
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
         if Stdlib.( = ) [] v_interface then bnds
         else
           let arg =
             (yojson_of_list yojson_of_interface) v_interface
           in
           let bnd = "interface", arg in
           bnd :: bnds
       in
       let bnds =
         match v_redundancy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redundancy_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_external_vpn_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_external_vpn_gateway

[@@@deriving.end]

let interface ?id ?ip_address () : interface = { id; ip_address }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_external_vpn_gateway ?description ?id ?labels
    ?project ?redundancy_type ?(interface = []) ?timeouts ~name () :
    google_compute_external_vpn_gateway =
  {
    description;
    id;
    labels;
    name;
    project;
    redundancy_type;
    interface;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  redundancy_type : string prop;
  self_link : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?description ?id ?labels ?project ?redundancy_type
    ?(interface = []) ?timeouts ~name __id =
  let __type = "google_compute_external_vpn_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       redundancy_type = Prop.computed __type __id "redundancy_type";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_external_vpn_gateway
        (google_compute_external_vpn_gateway ?description ?id ?labels
           ?project ?redundancy_type ~interface ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?redundancy_type ?(interface = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?redundancy_type
      ~interface ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
