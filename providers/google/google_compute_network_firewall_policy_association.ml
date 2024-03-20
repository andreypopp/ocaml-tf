(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_network_firewall_policy_association = {
  attachment_target : string prop;
  firewall_policy : string prop;
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_compute_network_firewall_policy_association) -> ()

let yojson_of_google_compute_network_firewall_policy_association =
  (function
   | {
       attachment_target = v_attachment_target;
       firewall_policy = v_firewall_policy;
       id = v_id;
       name = v_name;
       project = v_project;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_policy
         in
         ("firewall_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attachment_target
         in
         ("attachment_target", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_network_firewall_policy_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network_firewall_policy_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_network_firewall_policy_association ?id ?project
    ?timeouts ~attachment_target ~firewall_policy ~name () :
    google_compute_network_firewall_policy_association =
  { attachment_target; firewall_policy; id; name; project; timeouts }

type t = {
  attachment_target : string prop;
  firewall_policy : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  short_name : string prop;
}

let make ?id ?project ?timeouts ~attachment_target ~firewall_policy
    ~name __id =
  let __type =
    "google_compute_network_firewall_policy_association"
  in
  let __attrs =
    ({
       attachment_target =
         Prop.computed __type __id "attachment_target";
       firewall_policy = Prop.computed __type __id "firewall_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       short_name = Prop.computed __type __id "short_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_firewall_policy_association
        (google_compute_network_firewall_policy_association ?id
           ?project ?timeouts ~attachment_target ~firewall_policy
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~attachment_target
    ~firewall_policy ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~attachment_target ~firewall_policy
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
