(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_dataproc_autoscaling_policy_iam_member = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  policy_id : string prop;  (** policy_id *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dataproc_autoscaling_policy_iam_member ?id ?location
    ?project ~member ~policy_id ~role ~condition () :
    google_dataproc_autoscaling_policy_iam_member =
  { id; location; member; policy_id; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  policy_id : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ?location ?project ~member ~policy_id ~role ~condition
    __id =
  let __type = "google_dataproc_autoscaling_policy_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       member = Prop.computed __type __id "member";
       policy_id = Prop.computed __type __id "policy_id";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_autoscaling_policy_iam_member
        (google_dataproc_autoscaling_policy_iam_member ?id ?location
           ?project ~member ~policy_id ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~member ~policy_id
    ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~member ~policy_id ~role ~condition
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
