(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dns_managed_zone_iam_policy = {
  id : string prop option; [@option]
  managed_zone : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_managed_zone_iam_policy) -> ()

let yojson_of_google_dns_managed_zone_iam_policy =
  (function
   | {
       id = v_id;
       managed_zone = v_managed_zone;
       project = v_project;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_managed_zone in
         ("managed_zone", arg) :: bnds
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
    : google_dns_managed_zone_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_managed_zone_iam_policy

[@@@deriving.end]

let google_dns_managed_zone_iam_policy ?id ?project ~managed_zone ()
    : google_dns_managed_zone_iam_policy =
  { id; managed_zone; project }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~managed_zone __id =
  let __type = "google_dns_managed_zone_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       managed_zone = Prop.computed __type __id "managed_zone";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zone_iam_policy
        (google_dns_managed_zone_iam_policy ?id ?project
           ~managed_zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~managed_zone __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~managed_zone __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
