(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type threat_prevention_profile__severity_overrides = {
  action : string prop;
  severity : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_prevention_profile__severity_overrides) -> ()

let yojson_of_threat_prevention_profile__severity_overrides =
  (function
   | { action = v_action; severity = v_severity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : threat_prevention_profile__severity_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_prevention_profile__severity_overrides

[@@@deriving.end]

type threat_prevention_profile__threat_overrides = {
  action : string prop;
  threat_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_prevention_profile__threat_overrides) -> ()

let yojson_of_threat_prevention_profile__threat_overrides =
  (function
   | { action = v_action; threat_id = v_threat_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_threat_id in
         ("threat_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : threat_prevention_profile__threat_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_prevention_profile__threat_overrides

[@@@deriving.end]

type threat_prevention_profile = {
  severity_overrides :
    threat_prevention_profile__severity_overrides list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_overrides : threat_prevention_profile__threat_overrides list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_prevention_profile) -> ()

let yojson_of_threat_prevention_profile =
  (function
   | {
       severity_overrides = v_severity_overrides;
       threat_overrides = v_threat_overrides;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_overrides then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_threat_prevention_profile__threat_overrides)
               v_threat_overrides
           in
           let bnd = "threat_overrides", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_severity_overrides then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_threat_prevention_profile__severity_overrides)
               v_severity_overrides
           in
           let bnd = "severity_overrides", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : threat_prevention_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_prevention_profile

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

type google_network_security_security_profile = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop option; [@option]
  name : string prop;
  parent : string prop option; [@option]
  type_ : string prop; [@key "type"]
  threat_prevention_profile : threat_prevention_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_security_security_profile) -> ()

let yojson_of_google_network_security_security_profile =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       parent = v_parent;
       type_ = v_type_;
       threat_prevention_profile = v_threat_prevention_profile;
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
         if Stdlib.( = ) [] v_threat_prevention_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_threat_prevention_profile)
               v_threat_prevention_profile
           in
           let bnd = "threat_prevention_profile", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
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
    : google_network_security_security_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_security_security_profile

[@@@deriving.end]

let threat_prevention_profile__severity_overrides ~action ~severity
    () : threat_prevention_profile__severity_overrides =
  { action; severity }

let threat_prevention_profile__threat_overrides ~action ~threat_id ()
    : threat_prevention_profile__threat_overrides =
  { action; threat_id }

let threat_prevention_profile ?(severity_overrides = [])
    ?(threat_overrides = []) () : threat_prevention_profile =
  { severity_overrides; threat_overrides }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_security_profile ?description ?id ?labels
    ?location ?parent ?(threat_prevention_profile = []) ?timeouts
    ~name ~type_ () : google_network_security_security_profile =
  {
    description;
    id;
    labels;
    location;
    name;
    parent;
    type_;
    threat_prevention_profile;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  self_link : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?location ?parent
    ?(threat_prevention_profile = []) ?timeouts ~name ~type_ __id =
  let __type = "google_network_security_security_profile" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_security_profile
        (google_network_security_security_profile ?description ?id
           ?labels ?location ?parent ~threat_prevention_profile
           ?timeouts ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?location ?parent
    ?(threat_prevention_profile = []) ?timeouts ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?location ?parent
      ~threat_prevention_profile ?timeouts ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
