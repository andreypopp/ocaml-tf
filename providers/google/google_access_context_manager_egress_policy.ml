(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_egress_policy = {
  egress_policy_name : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  id : string prop option; [@option]  (** id *)
  resource : string prop;
      (** A GCP resource that is inside of the service perimeter. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_egress_policy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_access_context_manager_egress_policy ?id ?timeouts
    ~egress_policy_name ~resource () :
    google_access_context_manager_egress_policy =
  { egress_policy_name; id; resource; timeouts }

type t = {
  egress_policy_name : string prop;
  id : string prop;
  resource : string prop;
}

let make ?id ?timeouts ~egress_policy_name ~resource __id =
  let __type = "google_access_context_manager_egress_policy" in
  let __attrs =
    ({
       egress_policy_name =
         Prop.computed __type __id "egress_policy_name";
       id = Prop.computed __type __id "id";
       resource = Prop.computed __type __id "resource";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_egress_policy
        (google_access_context_manager_egress_policy ?id ?timeouts
           ~egress_policy_name ~resource ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~egress_policy_name ~resource
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~egress_policy_name ~resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
