(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dns_managed_zone_iam_policy = {
  id : string prop option; [@option]  (** id *)
  managed_zone : string prop;  (** managed_zone *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dns_managed_zone_iam_policy *)

let google_dns_managed_zone_iam_policy ?id ?project ~managed_zone
    ~policy_data () : google_dns_managed_zone_iam_policy =
  { id; managed_zone; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~managed_zone ~policy_data __id =
  let __type = "google_dns_managed_zone_iam_policy" in
  let __attrs =
    ({
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
           ~managed_zone ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~managed_zone ~policy_data __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~managed_zone ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
