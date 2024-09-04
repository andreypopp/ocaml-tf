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

type google_network_security_firewall_endpoint_association = {
  disabled : bool prop option; [@option]
  firewall_endpoint : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  network : string prop;
  parent : string prop option; [@option]
  tls_inspection_policy : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_network_security_firewall_endpoint_association) ->
  ()

let yojson_of_google_network_security_firewall_endpoint_association =
  (function
   | {
       disabled = v_disabled;
       firewall_endpoint = v_firewall_endpoint;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       network = v_network;
       parent = v_parent;
       tls_inspection_policy = v_tls_inspection_policy;
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
         match v_tls_inspection_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_inspection_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_firewall_endpoint
         in
         ("firewall_endpoint", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_network_security_firewall_endpoint_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_network_security_firewall_endpoint_association

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_firewall_endpoint_association ?disabled
    ?id ?labels ?parent ?tls_inspection_policy ?timeouts
    ~firewall_endpoint ~location ~name ~network () :
    google_network_security_firewall_endpoint_association =
  {
    disabled;
    firewall_endpoint;
    id;
    labels;
    location;
    name;
    network;
    parent;
    tls_inspection_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  disabled : bool prop;
  effective_labels : string Tf_core.assoc prop;
  firewall_endpoint : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  reconciling : bool prop;
  self_link : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  tls_inspection_policy : string prop;
  update_time : string prop;
}

let make ?disabled ?id ?labels ?parent ?tls_inspection_policy
    ?timeouts ~firewall_endpoint ~location ~name ~network __id =
  let __type =
    "google_network_security_firewall_endpoint_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       disabled = Prop.computed __type __id "disabled";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       firewall_endpoint =
         Prop.computed __type __id "firewall_endpoint";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       parent = Prop.computed __type __id "parent";
       reconciling = Prop.computed __type __id "reconciling";
       self_link = Prop.computed __type __id "self_link";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tls_inspection_policy =
         Prop.computed __type __id "tls_inspection_policy";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_firewall_endpoint_association
        (google_network_security_firewall_endpoint_association
           ?disabled ?id ?labels ?parent ?tls_inspection_policy
           ?timeouts ~firewall_endpoint ~location ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ?labels ?parent
    ?tls_inspection_policy ?timeouts ~firewall_endpoint ~location
    ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ?labels ?parent ?tls_inspection_policy
      ?timeouts ~firewall_endpoint ~location ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
