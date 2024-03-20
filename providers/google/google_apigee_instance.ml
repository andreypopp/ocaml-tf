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

type google_apigee_instance = {
  consumer_accept_list : string prop list option; [@option]
  description : string prop option; [@option]
  disk_encryption_key_name : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  ip_range : string prop option; [@option]
  location : string prop;
  name : string prop;
  org_id : string prop;
  peering_cidr_range : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_instance) -> ()

let yojson_of_google_apigee_instance =
  (function
   | {
       consumer_accept_list = v_consumer_accept_list;
       description = v_description;
       disk_encryption_key_name = v_disk_encryption_key_name;
       display_name = v_display_name;
       id = v_id;
       ip_range = v_ip_range;
       location = v_location;
       name = v_name;
       org_id = v_org_id;
       peering_cidr_range = v_peering_cidr_range;
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
         match v_peering_cidr_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peering_cidr_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
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
         match v_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_range", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_key_name", arg in
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
         match v_consumer_accept_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "consumer_accept_list", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_instance

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_instance ?consumer_accept_list ?description
    ?disk_encryption_key_name ?display_name ?id ?ip_range
    ?peering_cidr_range ?timeouts ~location ~name ~org_id () :
    google_apigee_instance =
  {
    consumer_accept_list;
    description;
    disk_encryption_key_name;
    display_name;
    id;
    ip_range;
    location;
    name;
    org_id;
    peering_cidr_range;
    timeouts;
  }

type t = {
  consumer_accept_list : string list prop;
  description : string prop;
  disk_encryption_key_name : string prop;
  display_name : string prop;
  host : string prop;
  id : string prop;
  ip_range : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  peering_cidr_range : string prop;
  port : string prop;
  service_attachment : string prop;
}

let make ?consumer_accept_list ?description ?disk_encryption_key_name
    ?display_name ?id ?ip_range ?peering_cidr_range ?timeouts
    ~location ~name ~org_id __id =
  let __type = "google_apigee_instance" in
  let __attrs =
    ({
       consumer_accept_list =
         Prop.computed __type __id "consumer_accept_list";
       description = Prop.computed __type __id "description";
       disk_encryption_key_name =
         Prop.computed __type __id "disk_encryption_key_name";
       display_name = Prop.computed __type __id "display_name";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       peering_cidr_range =
         Prop.computed __type __id "peering_cidr_range";
       port = Prop.computed __type __id "port";
       service_attachment =
         Prop.computed __type __id "service_attachment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_instance
        (google_apigee_instance ?consumer_accept_list ?description
           ?disk_encryption_key_name ?display_name ?id ?ip_range
           ?peering_cidr_range ?timeouts ~location ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?consumer_accept_list ?description
    ?disk_encryption_key_name ?display_name ?id ?ip_range
    ?peering_cidr_range ?timeouts ~location ~name ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?consumer_accept_list ?description ?disk_encryption_key_name
      ?display_name ?id ?ip_range ?peering_cidr_range ?timeouts
      ~location ~name ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
