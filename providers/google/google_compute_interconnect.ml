(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type macsec__pre_shared_keys = {
  fail_open : bool prop option; [@option]
  name : string prop;
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : macsec__pre_shared_keys) -> ()

let yojson_of_macsec__pre_shared_keys =
  (function
   | {
       fail_open = v_fail_open;
       name = v_name;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_fail_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_open", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : macsec__pre_shared_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_macsec__pre_shared_keys

[@@@deriving.end]

type macsec = {
  pre_shared_keys : macsec__pre_shared_keys list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : macsec) -> ()

let yojson_of_macsec =
  (function
   | { pre_shared_keys = v_pre_shared_keys } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pre_shared_keys then bnds
         else
           let arg =
             (yojson_of_list yojson_of_macsec__pre_shared_keys)
               v_pre_shared_keys
           in
           let bnd = "pre_shared_keys", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : macsec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_macsec

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

type circuit_infos = {
  customer_demarc_id : string prop;
  google_circuit_id : string prop;
  google_demarc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : circuit_infos) -> ()

let yojson_of_circuit_infos =
  (function
   | {
       customer_demarc_id = v_customer_demarc_id;
       google_circuit_id = v_google_circuit_id;
       google_demarc_id = v_google_demarc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_google_demarc_id
         in
         ("google_demarc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_google_circuit_id
         in
         ("google_circuit_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_customer_demarc_id
         in
         ("customer_demarc_id", arg) :: bnds
       in
       `Assoc bnds
    : circuit_infos -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_circuit_infos

[@@@deriving.end]

type expected_outages = {
  affected_circuits : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  end_time : string prop;
  issue_type : string prop;
  name : string prop;
  source : string prop;
  start_time : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : expected_outages) -> ()

let yojson_of_expected_outages =
  (function
   | {
       affected_circuits = v_affected_circuits;
       description = v_description;
       end_time = v_end_time;
       issue_type = v_issue_type;
       name = v_name;
       source = v_source;
       start_time = v_start_time;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issue_type in
         ("issue_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_affected_circuits then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_affected_circuits
           in
           let bnd = "affected_circuits", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : expected_outages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_expected_outages

[@@@deriving.end]

type google_compute_interconnect = {
  admin_enabled : bool prop option; [@option]
  customer_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  interconnect_type : string prop;
  labels : string prop Tf_core.assoc option; [@option]
  link_type : string prop;
  location : string prop;
  macsec_enabled : bool prop option; [@option]
  name : string prop;
  noc_contact_email : string prop option; [@option]
  project : string prop option; [@option]
  remote_location : string prop option; [@option]
  requested_features : string prop list option; [@option]
  requested_link_count : float prop;
  macsec : macsec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_interconnect) -> ()

let yojson_of_google_compute_interconnect =
  (function
   | {
       admin_enabled = v_admin_enabled;
       customer_name = v_customer_name;
       description = v_description;
       id = v_id;
       interconnect_type = v_interconnect_type;
       labels = v_labels;
       link_type = v_link_type;
       location = v_location;
       macsec_enabled = v_macsec_enabled;
       name = v_name;
       noc_contact_email = v_noc_contact_email;
       project = v_project;
       remote_location = v_remote_location;
       requested_features = v_requested_features;
       requested_link_count = v_requested_link_count;
       macsec = v_macsec;
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
         if Stdlib.( = ) [] v_macsec then bnds
         else
           let arg = (yojson_of_list yojson_of_macsec) v_macsec in
           let bnd = "macsec", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_requested_link_count
         in
         ("requested_link_count", arg) :: bnds
       in
       let bnds =
         match v_requested_features with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "requested_features", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_location", arg in
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
         match v_noc_contact_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "noc_contact_email", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_macsec_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "macsec_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_link_type in
         ("link_type", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_interconnect_type
         in
         ("interconnect_type", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_customer_name in
         ("customer_name", arg) :: bnds
       in
       let bnds =
         match v_admin_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "admin_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_interconnect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_interconnect

[@@@deriving.end]

let macsec__pre_shared_keys ?fail_open ?start_time ~name () :
    macsec__pre_shared_keys =
  { fail_open; name; start_time }

let macsec ~pre_shared_keys () : macsec = { pre_shared_keys }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_interconnect ?admin_enabled ?description ?id
    ?labels ?macsec_enabled ?noc_contact_email ?project
    ?remote_location ?requested_features ?(macsec = []) ?timeouts
    ~customer_name ~interconnect_type ~link_type ~location ~name
    ~requested_link_count () : google_compute_interconnect =
  {
    admin_enabled;
    customer_name;
    description;
    id;
    interconnect_type;
    labels;
    link_type;
    location;
    macsec_enabled;
    name;
    noc_contact_email;
    project;
    remote_location;
    requested_features;
    requested_link_count;
    macsec;
    timeouts;
  }

type t = {
  tf_name : string;
  admin_enabled : bool prop;
  available_features : string list prop;
  circuit_infos : circuit_infos list prop;
  creation_timestamp : string prop;
  customer_name : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  expected_outages : expected_outages list prop;
  google_ip_address : string prop;
  google_reference_id : string prop;
  id : string prop;
  interconnect_attachments : string list prop;
  interconnect_type : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  link_type : string prop;
  location : string prop;
  macsec_enabled : bool prop;
  name : string prop;
  noc_contact_email : string prop;
  operational_status : string prop;
  peer_ip_address : string prop;
  project : string prop;
  provisioned_link_count : float prop;
  remote_location : string prop;
  requested_features : string list prop;
  requested_link_count : float prop;
  satisfies_pzs : bool prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?admin_enabled ?description ?id ?labels ?macsec_enabled
    ?noc_contact_email ?project ?remote_location ?requested_features
    ?(macsec = []) ?timeouts ~customer_name ~interconnect_type
    ~link_type ~location ~name ~requested_link_count __id =
  let __type = "google_compute_interconnect" in
  let __attrs =
    ({
       tf_name = __id;
       admin_enabled = Prop.computed __type __id "admin_enabled";
       available_features =
         Prop.computed __type __id "available_features";
       circuit_infos = Prop.computed __type __id "circuit_infos";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       customer_name = Prop.computed __type __id "customer_name";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       expected_outages =
         Prop.computed __type __id "expected_outages";
       google_ip_address =
         Prop.computed __type __id "google_ip_address";
       google_reference_id =
         Prop.computed __type __id "google_reference_id";
       id = Prop.computed __type __id "id";
       interconnect_attachments =
         Prop.computed __type __id "interconnect_attachments";
       interconnect_type =
         Prop.computed __type __id "interconnect_type";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       link_type = Prop.computed __type __id "link_type";
       location = Prop.computed __type __id "location";
       macsec_enabled = Prop.computed __type __id "macsec_enabled";
       name = Prop.computed __type __id "name";
       noc_contact_email =
         Prop.computed __type __id "noc_contact_email";
       operational_status =
         Prop.computed __type __id "operational_status";
       peer_ip_address = Prop.computed __type __id "peer_ip_address";
       project = Prop.computed __type __id "project";
       provisioned_link_count =
         Prop.computed __type __id "provisioned_link_count";
       remote_location = Prop.computed __type __id "remote_location";
       requested_features =
         Prop.computed __type __id "requested_features";
       requested_link_count =
         Prop.computed __type __id "requested_link_count";
       satisfies_pzs = Prop.computed __type __id "satisfies_pzs";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_interconnect
        (google_compute_interconnect ?admin_enabled ?description ?id
           ?labels ?macsec_enabled ?noc_contact_email ?project
           ?remote_location ?requested_features ~macsec ?timeouts
           ~customer_name ~interconnect_type ~link_type ~location
           ~name ~requested_link_count ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_enabled ?description ?id ?labels
    ?macsec_enabled ?noc_contact_email ?project ?remote_location
    ?requested_features ?(macsec = []) ?timeouts ~customer_name
    ~interconnect_type ~link_type ~location ~name
    ~requested_link_count __id =
  let (r : _ Tf_core.resource) =
    make ?admin_enabled ?description ?id ?labels ?macsec_enabled
      ?noc_contact_email ?project ?remote_location
      ?requested_features ~macsec ?timeouts ~customer_name
      ~interconnect_type ~link_type ~location ~name
      ~requested_link_count __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
