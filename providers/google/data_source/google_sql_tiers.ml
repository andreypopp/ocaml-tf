(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tiers = {
  disk_quota : float prop;
  ram : float prop;
  region : string prop list;
  tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tiers) -> ()

let yojson_of_tiers =
  (function
   | {
       disk_quota = v_disk_quota;
       ram = v_ram;
       region = v_region;
       tier = v_tier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_region
         in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ram in
         ("ram", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_quota in
         ("disk_quota", arg) :: bnds
       in
       `Assoc bnds
    : tiers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tiers

[@@@deriving.end]

type google_sql_tiers = {
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_tiers) -> ()

let yojson_of_google_sql_tiers =
  (function
   | { id = v_id; project = v_project } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_sql_tiers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_tiers

[@@@deriving.end]

let google_sql_tiers ?id ?project () : google_sql_tiers =
  { id; project }

type t = {
  id : string prop;
  project : string prop;
  tiers : tiers list prop;
}

let make ?id ?project __id =
  let __type = "google_sql_tiers" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       tiers = Prop.computed __type __id "tiers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_tiers (google_sql_tiers ?id ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
