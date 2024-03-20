(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_envgroup = {
  hostnames : string prop list option; [@option]
      (** Hostnames of the environment group. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The resource ID of the environment group. *)
  org_id : string prop;
      (** The Apigee Organization associated with the Apigee environment group,
in the format 'organizations/{{org_name}}'. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_envgroup *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_envgroup ?hostnames ?id ?timeouts ~name ~org_id ()
    : google_apigee_envgroup =
  { hostnames; id; name; org_id; timeouts }

type t = {
  hostnames : string list prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

let make ?hostnames ?id ?timeouts ~name ~org_id __id =
  let __type = "google_apigee_envgroup" in
  let __attrs =
    ({
       hostnames = Prop.computed __type __id "hostnames";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_envgroup
        (google_apigee_envgroup ?hostnames ?id ?timeouts ~name
           ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?hostnames ?id ?timeouts ~name ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?hostnames ?id ?timeouts ~name ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
