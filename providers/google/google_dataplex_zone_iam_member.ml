(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_dataplex_zone_iam_member = {
  dataplex_zone : string prop;  (** dataplex_zone *)
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_dataplex_zone_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dataplex_zone_iam_member ?id ?location ?project
    ~dataplex_zone ~lake ~member ~role ~condition () :
    google_dataplex_zone_iam_member =
  {
    dataplex_zone;
    id;
    lake;
    location;
    member;
    project;
    role;
    condition;
  }

type t = {
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ?location ?project ~dataplex_zone ~lake ~member ~role
    ~condition __id =
  let __type = "google_dataplex_zone_iam_member" in
  let __attrs =
    ({
       dataplex_zone = Prop.computed __type __id "dataplex_zone";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       lake = Prop.computed __type __id "lake";
       location = Prop.computed __type __id "location";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_zone_iam_member
        (google_dataplex_zone_iam_member ?id ?location ?project
           ~dataplex_zone ~lake ~member ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~dataplex_zone ~lake
    ~member ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~dataplex_zone ~lake ~member ~role
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
