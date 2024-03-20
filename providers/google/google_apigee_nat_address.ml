(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_nat_address = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;
      (** The Apigee instance associated with the Apigee environment,
in the format 'organizations/{{org_name}}/instances/{{instance_name}}'. *)
  name : string prop;  (** Resource ID of the NAT address. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_nat_address *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_nat_address ?id ?timeouts ~instance_id ~name () :
    google_apigee_nat_address =
  { id; instance_id; name; timeouts }

type t = {
  id : string prop;
  instance_id : string prop;
  ip_address : string prop;
  name : string prop;
  state : string prop;
}

let make ?id ?timeouts ~instance_id ~name __id =
  let __type = "google_apigee_nat_address" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_nat_address
        (google_apigee_nat_address ?id ?timeouts ~instance_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~instance_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
