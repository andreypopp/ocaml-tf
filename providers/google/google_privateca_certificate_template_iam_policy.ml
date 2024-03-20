(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_privateca_certificate_template_iam_policy = {
  certificate_template : string prop;  (** certificate_template *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_privateca_certificate_template_iam_policy *)

let google_privateca_certificate_template_iam_policy ?id ?location
    ?project ~certificate_template ~policy_data () :
    google_privateca_certificate_template_iam_policy =
  { certificate_template; id; location; policy_data; project }

type t = {
  certificate_template : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~certificate_template ~policy_data
    __id =
  let __type = "google_privateca_certificate_template_iam_policy" in
  let __attrs =
    ({
       certificate_template =
         Prop.computed __type __id "certificate_template";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
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
      yojson_of_google_privateca_certificate_template_iam_policy
        (google_privateca_certificate_template_iam_policy ?id
           ?location ?project ~certificate_template ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~certificate_template
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~certificate_template ~policy_data
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
