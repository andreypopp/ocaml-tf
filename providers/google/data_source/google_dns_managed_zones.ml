(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_zones = {
  description : string prop;
  dns_name : string prop;
  id : string prop;
  managed_zone_id : float prop;
  name : string prop;
  name_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  project : string prop;
  visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_zones) -> ()

let yojson_of_managed_zones =
  (function
   | {
       description = v_description;
       dns_name = v_dns_name;
       id = v_id;
       managed_zone_id = v_managed_zone_id;
       name = v_name;
       name_servers = v_name_servers;
       project = v_project;
       visibility = v_visibility;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visibility in
         ("visibility", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_name_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_name_servers
           in
           let bnd = "name_servers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_managed_zone_id
         in
         ("managed_zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : managed_zones -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_zones

[@@@deriving.end]

type google_dns_managed_zones = {
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_managed_zones) -> ()

let yojson_of_google_dns_managed_zones =
  (function
   | { project = v_project } ->
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
       `Assoc bnds
    : google_dns_managed_zones -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_managed_zones

[@@@deriving.end]

let google_dns_managed_zones ?project () : google_dns_managed_zones =
  { project }

type t = {
  tf_name : string;
  id : string prop;
  managed_zones : managed_zones list prop;
  project : string prop;
}

let make ?project __id =
  let __type = "google_dns_managed_zones" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       managed_zones = Prop.computed __type __id "managed_zones";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zones
        (google_dns_managed_zones ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?project __id =
  let (r : _ Tf_core.resource) = make ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
