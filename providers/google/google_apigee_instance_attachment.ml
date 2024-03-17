(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_instance_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_instance_attachment__timeouts *)

type google_apigee_instance_attachment = {
  environment : string prop;
      (** The resource ID of the environment. *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;
      (** The Apigee instance associated with the Apigee environment,
in the format 'organizations/{{org_name}}/instances/{{instance_name}}'. *)
  timeouts : google_apigee_instance_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_instance_attachment *)

type t = {
  environment : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
}

let google_apigee_instance_attachment ?id ?timeouts ~environment
    ~instance_id __resource_id =
  let __resource_type = "google_apigee_instance_attachment" in
  let __resource =
    ({ environment; id; instance_id; timeouts }
      : google_apigee_instance_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_instance_attachment __resource);
  let __resource_attributes =
    ({
       environment =
         Prop.computed __resource_type __resource_id "environment";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
