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

type google_compute_public_advertised_prefix = {
  description : string prop option; [@option]
  dns_verification_ip : string prop;
  id : string prop option; [@option]
  ip_cidr_range : string prop;
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_public_advertised_prefix) -> ()

let yojson_of_google_compute_public_advertised_prefix =
  (function
   | {
       description = v_description;
       dns_verification_ip = v_dns_verification_ip;
       id = v_id;
       ip_cidr_range = v_ip_cidr_range;
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
         let arg = yojson_of_prop yojson_of_string v_ip_cidr_range in
         ("ip_cidr_range", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_dns_verification_ip
         in
         ("dns_verification_ip", arg) :: bnds
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
    : google_compute_public_advertised_prefix ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_public_advertised_prefix

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_public_advertised_prefix ?description ?id ?project
    ?timeouts ~dns_verification_ip ~ip_cidr_range ~name () :
    google_compute_public_advertised_prefix =
  {
    description;
    dns_verification_ip;
    id;
    ip_cidr_range;
    name;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  dns_verification_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?timeouts ~dns_verification_ip
    ~ip_cidr_range ~name __id =
  let __type = "google_compute_public_advertised_prefix" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       dns_verification_ip =
         Prop.computed __type __id "dns_verification_ip";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_public_advertised_prefix
        (google_compute_public_advertised_prefix ?description ?id
           ?project ?timeouts ~dns_verification_ip ~ip_cidr_range
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts
    ~dns_verification_ip ~ip_cidr_range ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~dns_verification_ip
      ~ip_cidr_range ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
