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

type google_active_directory_domain = {
  admin : string prop option; [@option]
  authorized_networks : string prop list option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  locations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  project : string prop option; [@option]
  reserved_ip_range : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_active_directory_domain) -> ()

let yojson_of_google_active_directory_domain =
  (function
   | {
       admin = v_admin;
       authorized_networks = v_authorized_networks;
       domain_name = v_domain_name;
       id = v_id;
       labels = v_labels;
       locations = v_locations;
       project = v_project;
       reserved_ip_range = v_reserved_ip_range;
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
         let arg =
           yojson_of_prop yojson_of_string v_reserved_ip_range
         in
         ("reserved_ip_range", arg) :: bnds
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
         if [] = v_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_locations
           in
           let bnd = "locations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_authorized_networks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorized_networks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_active_directory_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_active_directory_domain

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_active_directory_domain ?admin ?authorized_networks ?id
    ?labels ?project ?timeouts ~domain_name ~locations
    ~reserved_ip_range () : google_active_directory_domain =
  {
    admin;
    authorized_networks;
    domain_name;
    id;
    labels;
    locations;
    project;
    reserved_ip_range;
    timeouts;
  }

type t = {
  tf_name : string;
  admin : string prop;
  authorized_networks : string list prop;
  domain_name : string prop;
  effective_labels : (string * string) list prop;
  fqdn : string prop;
  id : string prop;
  labels : (string * string) list prop;
  locations : string list prop;
  name : string prop;
  project : string prop;
  reserved_ip_range : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?admin ?authorized_networks ?id ?labels ?project ?timeouts
    ~domain_name ~locations ~reserved_ip_range __id =
  let __type = "google_active_directory_domain" in
  let __attrs =
    ({
       tf_name = __id;
       admin = Prop.computed __type __id "admin";
       authorized_networks =
         Prop.computed __type __id "authorized_networks";
       domain_name = Prop.computed __type __id "domain_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       locations = Prop.computed __type __id "locations";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reserved_ip_range =
         Prop.computed __type __id "reserved_ip_range";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_active_directory_domain
        (google_active_directory_domain ?admin ?authorized_networks
           ?id ?labels ?project ?timeouts ~domain_name ~locations
           ~reserved_ip_range ());
    attrs = __attrs;
  }

let register ?tf_module ?admin ?authorized_networks ?id ?labels
    ?project ?timeouts ~domain_name ~locations ~reserved_ip_range
    __id =
  let (r : _ Tf_core.resource) =
    make ?admin ?authorized_networks ?id ?labels ?project ?timeouts
      ~domain_name ~locations ~reserved_ip_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
