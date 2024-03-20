(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_env_references = {
  description : string prop option; [@option]
      (** Optional. A human-readable description of this reference. *)
  env_id : string prop;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/environments/{{env_name}}'. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+. *)
  refers : string prop;
      (** Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType. *)
  resource_type : string prop;
      (** The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_env_references *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_env_references ?description ?id ?timeouts ~env_id
    ~name ~refers ~resource_type () : google_apigee_env_references =
  { description; env_id; id; name; refers; resource_type; timeouts }

type t = {
  description : string prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
  refers : string prop;
  resource_type : string prop;
}

let make ?description ?id ?timeouts ~env_id ~name ~refers
    ~resource_type __id =
  let __type = "google_apigee_env_references" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       env_id = Prop.computed __type __id "env_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       refers = Prop.computed __type __id "refers";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_env_references
        (google_apigee_env_references ?description ?id ?timeouts
           ~env_id ~name ~refers ~resource_type ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~env_id ~name
    ~refers ~resource_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~env_id ~name ~refers
      ~resource_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
