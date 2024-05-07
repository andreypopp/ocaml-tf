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

type google_compute_firewall_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop;
  short_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_firewall_policy) -> ()

let yojson_of_google_compute_firewall_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       parent = v_parent;
       short_name = v_short_name;
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
         let arg = yojson_of_prop yojson_of_string v_short_name in
         ("short_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_compute_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_firewall_policy

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_firewall_policy ?description ?id ?timeouts ~parent
    ~short_name () : google_compute_firewall_policy =
  { description; id; parent; short_name; timeouts }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
  short_name : string prop;
}

let make ?description ?id ?timeouts ~parent ~short_name __id =
  let __type = "google_compute_firewall_policy" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       rule_tuple_count =
         Prop.computed __type __id "rule_tuple_count";
       self_link = Prop.computed __type __id "self_link";
       self_link_with_id =
         Prop.computed __type __id "self_link_with_id";
       short_name = Prop.computed __type __id "short_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_firewall_policy
        (google_compute_firewall_policy ?description ?id ?timeouts
           ~parent ~short_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~parent
    ~short_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~parent ~short_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
