(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_env_keystore = {
  env_id : string prop;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/environments/{{env_name}}'. *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** The name of the newly created keystore. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_env_keystore *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_env_keystore ?id ?name ?timeouts ~env_id () :
    google_apigee_env_keystore =
  { env_id; id; name; timeouts }

type t = {
  aliases : string list prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?name ?timeouts ~env_id __id =
  let __type = "google_apigee_env_keystore" in
  let __attrs =
    ({
       aliases = Prop.computed __type __id "aliases";
       env_id = Prop.computed __type __id "env_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_env_keystore
        (google_apigee_env_keystore ?id ?name ?timeouts ~env_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~env_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~env_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
