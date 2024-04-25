(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_zones = unit [@@deriving_inline yojson_of]

let _ = fun (_ : managed_zones) -> ()

let yojson_of_managed_zones =
  (yojson_of_unit
    : managed_zones -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_zones

[@@@deriving.end]

type google_dns_managed_zones = {
  project : string prop option; [@option]
  managed_zones : managed_zones list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_managed_zones) -> ()

let yojson_of_google_dns_managed_zones =
  (function
   | { project = v_project; managed_zones = v_managed_zones } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_managed_zones v_managed_zones
         in
         ("managed_zones", arg) :: bnds
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

let managed_zones () = ()

let google_dns_managed_zones ?project ?(managed_zones = []) () :
    google_dns_managed_zones =
  { project; managed_zones }

type t = { id : string prop; project : string prop }

let make ?project ?(managed_zones = []) __id =
  let __type = "google_dns_managed_zones" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zones
        (google_dns_managed_zones ?project ~managed_zones ());
    attrs = __attrs;
  }

let register ?tf_module ?project ?(managed_zones = []) __id =
  let (r : _ Tf_core.resource) = make ?project ~managed_zones __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
