(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_dataplex_asset_iam_binding = {
  asset : string prop;  (** asset *)
  dataplex_zone : string prop;  (** dataplex_zone *)
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_dataplex_asset_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dataplex_asset_iam_binding ?id ?location ?project ~asset
    ~dataplex_zone ~lake ~members ~role ~condition () :
    google_dataplex_asset_iam_binding =
  {
    asset;
    dataplex_zone;
    id;
    lake;
    location;
    members;
    project;
    role;
    condition;
  }

type t = {
  asset : string prop;
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let make ?id ?location ?project ~asset ~dataplex_zone ~lake ~members
    ~role ~condition __id =
  let __type = "google_dataplex_asset_iam_binding" in
  let __attrs =
    ({
       asset = Prop.computed __type __id "asset";
       dataplex_zone = Prop.computed __type __id "dataplex_zone";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       lake = Prop.computed __type __id "lake";
       location = Prop.computed __type __id "location";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_asset_iam_binding
        (google_dataplex_asset_iam_binding ?id ?location ?project
           ~asset ~dataplex_zone ~lake ~members ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~asset ~dataplex_zone
    ~lake ~members ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~asset ~dataplex_zone ~lake ~members
      ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
