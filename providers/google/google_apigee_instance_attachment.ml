(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_instance_attachment = {
  environment : string prop;
      (** The resource ID of the environment. *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;
      (** The Apigee instance associated with the Apigee environment,
in the format 'organizations/{{org_name}}/instances/{{instance_name}}'. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_instance_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_instance_attachment ?id ?timeouts ~environment
    ~instance_id () : google_apigee_instance_attachment =
  { environment; id; instance_id; timeouts }

type t = {
  environment : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~environment ~instance_id __id =
  let __type = "google_apigee_instance_attachment" in
  let __attrs =
    ({
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_instance_attachment
        (google_apigee_instance_attachment ?id ?timeouts ~environment
           ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~environment ~instance_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~environment ~instance_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
