(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dataplex_zone_iam_policy = {
  dataplex_zone : string prop;  (** dataplex_zone *)
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dataplex_zone_iam_policy *)

let google_dataplex_zone_iam_policy ?id ?location ?project
    ~dataplex_zone ~lake ~policy_data () :
    google_dataplex_zone_iam_policy =
  { dataplex_zone; id; lake; location; policy_data; project }

type t = {
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
