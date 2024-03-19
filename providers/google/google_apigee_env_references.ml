(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?timeouts ~env_id ~name
    ~refers ~resource_type __resource_id =
  let __resource_type = "google_apigee_env_references" in
  let __resource =
    google_apigee_env_references ?description ?id ?timeouts ~env_id
      ~name ~refers ~resource_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_env_references __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       env_id = Prop.computed __resource_type __resource_id "env_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       refers = Prop.computed __resource_type __resource_id "refers";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
     }
      : t)
  in
  __resource_attributes
