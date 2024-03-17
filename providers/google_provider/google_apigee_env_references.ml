(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_env_references__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_env_references__timeouts *)

type google_apigee_env_references = {
  description : string option; [@option]
      (** Optional. A human-readable description of this reference. *)
  env_id : string;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/environments/{{env_name}}'. *)
  name : string;
      (** Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+. *)
  refers : string;
      (** Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType. *)
  resource_type : string;
      (** The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'. *)
  timeouts : google_apigee_env_references__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_env_references *)

let google_apigee_env_references ?description ?timeouts ~env_id ~name
    ~refers ~resource_type __resource_id =
  let __resource_type = "google_apigee_env_references" in
  let __resource =
    { description; env_id; name; refers; resource_type; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_env_references __resource);
  ()
