(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?hostnames ?id ?timeouts ~name ~org_id
    __resource_id =
  let __resource_type = "google_apigee_envgroup" in
  let __resource =
    google_apigee_envgroup ?hostnames ?id ?timeouts ~name ~org_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_envgroup __resource);
  let __resource_attributes =
    ({
       hostnames =
         Prop.computed __resource_type __resource_id "hostnames";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
     }
      : t)
  in
  __resource_attributes
