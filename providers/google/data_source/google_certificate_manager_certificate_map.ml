(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gclb_targets__ip_configs = {
  ip_address : string prop;
  ports : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gclb_targets__ip_configs) -> ()

let yojson_of_gclb_targets__ip_configs =
  (function
   | { ip_address = v_ip_address; ports = v_ports } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : gclb_targets__ip_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gclb_targets__ip_configs

[@@@deriving.end]

type gclb_targets = {
  ip_configs : gclb_targets__ip_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_https_proxy : string prop;
  target_ssl_proxy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gclb_targets) -> ()

let yojson_of_gclb_targets =
  (function
   | {
       ip_configs = v_ip_configs;
       target_https_proxy = v_target_https_proxy;
       target_ssl_proxy = v_target_ssl_proxy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_ssl_proxy
         in
         ("target_ssl_proxy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_https_proxy
         in
         ("target_https_proxy", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gclb_targets__ip_configs)
               v_ip_configs
           in
           let bnd = "ip_configs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : gclb_targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gclb_targets

[@@@deriving.end]

type google_certificate_manager_certificate_map = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_certificate_manager_certificate_map) -> ()

let yojson_of_google_certificate_manager_certificate_map =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_certificate_manager_certificate_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_certificate_manager_certificate_map

[@@@deriving.end]

let google_certificate_manager_certificate_map ?id ?project ~name ()
    : google_certificate_manager_certificate_map =
  { id; name; project }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  gclb_targets : gclb_targets list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?id ?project ~name __id =
  let __type = "google_certificate_manager_certificate_map" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       gclb_targets = Prop.computed __type __id "gclb_targets";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_certificate_manager_certificate_map
        (google_certificate_manager_certificate_map ?id ?project
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
