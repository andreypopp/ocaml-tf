(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_envgroup_attachment = {
  envgroup_id : string prop;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/envgroups/{{envgroup_name}}'. *)
  environment : string prop;
      (** The resource ID of the environment. *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_envgroup_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_envgroup_attachment ?id ?timeouts ~envgroup_id
    ~environment () : google_apigee_envgroup_attachment =
  { envgroup_id; environment; id; timeouts }

type t = {
  envgroup_id : string prop;
  environment : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~envgroup_id ~environment __id =
  let __type = "google_apigee_envgroup_attachment" in
  let __attrs =
    ({
       envgroup_id = Prop.computed __type __id "envgroup_id";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_envgroup_attachment
        (google_apigee_envgroup_attachment ?id ?timeouts ~envgroup_id
           ~environment ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~envgroup_id ~environment __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~envgroup_id ~environment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
