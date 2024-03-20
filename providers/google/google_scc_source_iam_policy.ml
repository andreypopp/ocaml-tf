(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_scc_source_iam_policy = {
  id : string prop option; [@option]  (** id *)
  organization : string prop;  (** organization *)
  policy_data : string prop;  (** policy_data *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** google_scc_source_iam_policy *)

let google_scc_source_iam_policy ?id ~organization ~policy_data
    ~source () : google_scc_source_iam_policy =
  { id; organization; policy_data; source }

type t = {
  etag : string prop;
  id : string prop;
  organization : string prop;
  policy_data : string prop;
  source : string prop;
}

let make ?id ~organization ~policy_data ~source __id =
  let __type = "google_scc_source_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       organization = Prop.computed __type __id "organization";
       policy_data = Prop.computed __type __id "policy_data";
       source = Prop.computed __type __id "source";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_source_iam_policy
        (google_scc_source_iam_policy ?id ~organization ~policy_data
           ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~organization ~policy_data ~source __id =
  let (r : _ Tf_core.resource) =
    make ?id ~organization ~policy_data ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
