(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_gke_hub_membership_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  membership_id : string prop;  (** membership_id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_policy *)

let google_gke_hub_membership_iam_policy ?id ?location ?project
    ~membership_id ~policy_data () :
    google_gke_hub_membership_iam_policy =
  { id; location; membership_id; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  membership_id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~membership_id ~policy_data __id =
  let __type = "google_gke_hub_membership_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       membership_id = Prop.computed __type __id "membership_id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_membership_iam_policy
        (google_gke_hub_membership_iam_policy ?id ?location ?project
           ~membership_id ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~membership_id
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~membership_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
