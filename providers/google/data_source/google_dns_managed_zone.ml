(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dns_managed_zone = {
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_managed_zone) -> ()

let yojson_of_google_dns_managed_zone =
  (function
   | { name = v_name; project = v_project } ->
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
       `Assoc bnds
    : google_dns_managed_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_managed_zone

[@@@deriving.end]

let google_dns_managed_zone ?project ~name () :
    google_dns_managed_zone =
  { name; project }

type t = {
  description : string prop;
  dns_name : string prop;
  id : string prop;
  managed_zone_id : float prop;
  name : string prop;
  name_servers : string list prop;
  project : string prop;
  visibility : string prop;
}

let make ?project ~name __id =
  let __type = "google_dns_managed_zone" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       managed_zone_id = Prop.computed __type __id "managed_zone_id";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       project = Prop.computed __type __id "project";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zone
        (google_dns_managed_zone ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
