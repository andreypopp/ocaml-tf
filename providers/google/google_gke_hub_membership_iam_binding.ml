(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_gke_hub_membership_iam_binding = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  membership_id : string prop;  (** membership_id *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_gke_hub_membership_iam_binding ?id ?location ?project
    ~members ~membership_id ~role ~condition () :
    google_gke_hub_membership_iam_binding =
  { id; location; members; membership_id; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  membership_id : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ?location ?project ~members ~membership_id ~role
    ~condition __id =
  let __type = "google_gke_hub_membership_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       members = Prop.computed __type __id "members";
       membership_id = Prop.computed __type __id "membership_id";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_membership_iam_binding
        (google_gke_hub_membership_iam_binding ?id ?location ?project
           ~members ~membership_id ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~members
    ~membership_id ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~members ~membership_id ~role
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
