(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dataplex_zone_iam_policy = {
  dataplex_zone : string prop;
  id : string prop option; [@option]
  lake : string prop;
  location : string prop option; [@option]
  policy_data : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataplex_zone_iam_policy) -> ()

let yojson_of_google_dataplex_zone_iam_policy =
  (function
   | {
       dataplex_zone = v_dataplex_zone;
       id = v_id;
       lake = v_lake;
       location = v_location;
       policy_data = v_policy_data;
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
         let arg = yojson_of_prop yojson_of_string v_policy_data in
         ("policy_data", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lake in
         ("lake", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_dataplex_zone in
         ("dataplex_zone", arg) :: bnds
       in
       `Assoc bnds
    : google_dataplex_zone_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataplex_zone_iam_policy

[@@@deriving.end]

let google_dataplex_zone_iam_policy ?id ?location ?project
    ~dataplex_zone ~lake ~policy_data () :
    google_dataplex_zone_iam_policy =
  { dataplex_zone; id; lake; location; policy_data; project }

type t = {
  tf_name : string;
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~dataplex_zone ~lake ~policy_data
    __id =
  let __type = "google_dataplex_zone_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       dataplex_zone = Prop.computed __type __id "dataplex_zone";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       lake = Prop.computed __type __id "lake";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_zone_iam_policy
        (google_dataplex_zone_iam_policy ?id ?location ?project
           ~dataplex_zone ~lake ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~dataplex_zone ~lake
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~dataplex_zone ~lake ~policy_data
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
