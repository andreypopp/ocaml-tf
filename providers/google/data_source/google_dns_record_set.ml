(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dns_record_set = {
  managed_zone : string prop;
  name : string prop;
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_record_set) -> ()

let yojson_of_google_dns_record_set =
  (function
   | {
       managed_zone = v_managed_zone;
       name = v_name;
       project = v_project;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_managed_zone in
         ("managed_zone", arg) :: bnds
       in
       `Assoc bnds
    : google_dns_record_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_record_set

[@@@deriving.end]

let google_dns_record_set ?project ~managed_zone ~name ~type_ () :
    google_dns_record_set =
  { managed_zone; name; project; type_ }

type t = {
  tf_name : string;
  id : string prop;
  managed_zone : string prop;
  name : string prop;
  project : string prop;
  rrdatas : string list prop;
  ttl : float prop;
  type_ : string prop;
}

let make ?project ~managed_zone ~name ~type_ __id =
  let __type = "google_dns_record_set" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       managed_zone = Prop.computed __type __id "managed_zone";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       rrdatas = Prop.computed __type __id "rrdatas";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_record_set
        (google_dns_record_set ?project ~managed_zone ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?project ~managed_zone ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?project ~managed_zone ~name ~type_ __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
